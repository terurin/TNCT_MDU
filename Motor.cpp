/* 
 * File:   Motor.cpp
 * Author: TERU
 * 
 * Created on 2015/06/13, 1:49
 */
#include <plib.h>
#include "Motor.h"

const float IMotor::VoltageReference= 2.024f;
const int IMotor::VoltageMotorPar = 16;
const float IMotor::AmpereMotorPar =0.05f;
const uint16_t IMotor::TimerMax= 0xFFFF;

float IMotor::MotorVoltage(){
    return ToFloat(MotorVoltageRaw())*VoltageMotorPar;
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
    
    
    
    T2CONbits.ON=true;
    
    
    
}





void IMotor::SetUpMotors(){
    //ここでは基本的な初期化を行う。
    
    
    
    
}

Q16 IMotor::MotorVoltageRaw(){
    //TODO あとで実装する。    
}

