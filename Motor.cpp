/* 
 * File:   Motor.cpp
 * Author: TERU
 * 
 * Created on 2015/06/13, 1:49
 */
#define _SUPPRESS_PLIB_WARNING //将来性のための警告を無視する
#include <plib.h>
#undef _SUPPRESS_PLIB_WARNING
#include "Motor.h"

//静的フィールド(public))
const float IMotor::ReferenceVoltage= 2.048f;
const int IMotor::MotorVoltageMax = 32.768f;
const float IMotor::MotorAmpereMax =40.48f;
const Q16 IMotor::TimerMax=Q16(0xFFFF);
const Between<Q16> IMotor::DtRangeDefault=Between<Q16>(Q16::FromFloat(0.98f),Q16::FromFloat(0.18f));

//静的フィールド(privete)
bool IMotor::IsInitialized=false;

IMotor::IMotor(const Between<Q16>& dt_range){
    //初期化していないなら初期化せよ!!
    if (!IsInitialized){
        SetUpADC();
        SetUpPWM();
        IsInitialized=true;//初期化済みとマーク
    }
    DtRange=dt_range;//
    Dt(Q16(0),false);
}



void IMotor::SetUpADC(){
    /* 対象となるぴん
    * RA0 レファレンス電圧  Input   Anolog
    * RA1 モーター電圧      Input   Anolog AN1
    * RB12 MotorF1         Input   Anolog AN12
    * RB15 MotorF2         Input   Anolog AN9
    */
    
    //dir
    TRISAbits.TRISA0=true;
    TRISAbits.TRISA1=true;
    TRISBbits.TRISB12=true;
    TRISBbits.TRISB15=true;
    //make pins analog
    ANSELAbits.ANSA0=true;
    ANSELAbits.ANSA1=true;
    ANSELBbits.ANSB12=true;
    ANSELBbits.ANSB15=true;
    
    
    //wake up ad-module
    AD1CON1bits.ADON=false;//wake down this module for changing configuration
    AD1CON1bits.ADSIDL=false;//as idelling,is it work?.     //Vss
    AD1CON1bits.FORM=0b010;//Q16
    AD1CON1bits.SSRC=0b000;//manual convert
    AD1CON1bits.ASAM=false;//not auto convert
    
    AD1CON2bits.VCFG=0b001;//Vref+ AVss
    AD1CON2bits.OFFCAL=false;//for knowing ofset voltage ,but it is disenable
    AD1CON2bits.CSCNA=false;//not using scan
    AD1CON2bits.SMPI=0;//when happen interrupt, how many count is ?
    AD1CON2bits.BUFM=false;//not split buffer
    AD1CON2bits.ALTS=false;//not using convert A/B
    
    AD1CON3bits.ADRC=false;//fron system-clock
    AD1CON3bits.SAMC=5;//Tad
    AD1CON3bits.ADCS=2;//division of clock
    
    AD1CHSbits.CH0NA=0;//Vr-
    
    AD1CON1bits.ON=true;//wake up!!
}

void IMotor::SetUpPWM() {
    
    /*ピンアサインを行う。設定は以下のとおりである。
     * RB0 Fault            Input   Digtal(pull-up) FlautA
     * RB7 MotorA1          Output  Digital OC1
     * RB8 MotorB1          OutPut  Digital OC2
     * RB13 MotorB2         Output  Digital OC4
     * RB14 MotorA2         Output  Digital OC3
     */
    //set dir io
    TRISBbits.TRISB0=true;
    TRISBbits.TRISB7=false;
    TRISBbits.TRISB8=false;
    TRISBbits.TRISB13=false;
    TRISBbits.TRISB14=false;
    //be not analog 
    ANSELBbits.ANSB0=false;
    ANSELBbits.ANSB13=false;
    ANSELBbits.ANSB14=false;
    //pull-up
    CNPDBbits.CNPDB0=true;
    
    //set function
    OCFAR=0b0010;//FaultA
    RPB7R=0b0101;//OC1
    RPB8R=0b0101;//OC2
    RPB13R=0b0101;//OC4
    RPB14R=0b0101;//OC3
    //OC1
    OC1CONbits.ON=false;
    OC1CONbits.SIDL=false;//As idling ,work 
    OC1CONbits.OC32=false;//16bit-timer
    OC1CONbits.OCFLT=false;//it is not fault status
    OC1CONbits.OCTSEL=0;//timer 2
    OC1CONbits.OCM=0b111;//it is pwm mode with fault pin. whne fault pin is active ,this module stop.
    OC1CONbits.ON=true;
    //OC2~OC4
    OC2CON=OC3CON=OC4CON=OC1CON;//there are equales for each of them.
    //OCx dt =0
    OC1R=OC2R=OC3R=OC4R=0;//for this, output is 'L'
    
    //set up timer2
    T2CONbits.ON=false;
    T2CONbits.TGATE=false;//not using gate
    T2CONbits.TCKPS=0;//division of clock
    T2CONbits.T32=false;//16bit timer mode
    T2CONbits.TCS=false;//inside clock
    
    TMR2=0;//reset
    PR2=TimerMax.Read();
    T2CONbits.ON=true;
}

Q16 IMotor::GetADCRaw(AnalogPinNames pin_name){
    AD1CHSbits.CH0SA=pin_name;
    AD1CON1bits.SAMP=true;
    while(AD1CON1bits.SAMP);//wait while adconverting
    return Q16(ADC1BUF0);
}

float IMotor::MotorVoltage(){
    return ToFloat(MotorVoltageRaw())*MotorVoltageMax;
}

Q16 IMotor::MotorVoltageRaw(){
    return GetADCRaw(AnalogPinNames::AnalogPinMotorVlot);    
}

float IMotor::MotorAmpere(){
    return ToFloat(MotorAmpereRaw())*IMotor::MotorAmpereMax;
}

Q16 MotorA::MotorAmpereRaw(){
    return GetADCRaw(AnalogPinNames::AnalogPinMotorAmpA); 
}

void Q16 MotorA::Dt(Q16 dt, bool dir){
    
    Q16 pr=TimerMax*dt;
    
    
    
    
    
    
}

Q16 MotorB::MotorAmpereRaw(){
    return GetADCRaw(AnalogPinNames::AnalogPinMotorAmpB);
}

void Q16 MotorB::Dt(Q16 dt, bool dir){
    
    Q16 pr=TimerMax*dt;
    
    
    
    
    
    
}