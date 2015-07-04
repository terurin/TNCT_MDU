/* 
 * File:   pwm.cpp
 * Author: TERU
 * 
 * Created on 2015/06/26, 18:18
 */

#include <proc/p32mx120f032b.h>

#include "pwm.h"

namespace module {
    
    const tmath::between<tmath::Q16> PWM::RangeDefault
        =tmath::between<tmath::Q16>(tmath::Q16::FromFloat(0.18f),tmath::Q16::FromFloat(0.96f));
    const tmath::Q16 PWM::TimerMax=tmath::Q16(0xFFFF);
    
    bool PWM::IsInitialized = false;

    PWM::PWM() {
        if (!IsInitialized)throw;
        Direction = DirectionStop;
        Range=RangeDefault;
    }

    PWM::PWM(const PWM& orig) {
        Direction = orig.Direction;
        Range=orig.Range;
    }

    PWM::~PWM() {
        
    }

    void PWM::DtLimited(EnumDirection dir, tmath::Q16 dt){
        if (Range>dt)dt=Range.GetH();
        if (Range<dt)dt=tmath::Q16(0);
        DtRaw(dir,dt);
    }
    
    void PWM::Initialize() {
        if (!IsInitialized) {
            SetUpPWM();
            IsInitialized = true;
        }
    }

    void PWM::SetUpPWM() {

        /*ピンアサインを行う。設定は以下のとおりである。
         * RB0 Fault            Input   Digtal(pull-up) FlautA
         * RB7 MotorA1          Output  Digital OC1
         * RB8 MotorB1          OutPut  Digital OC2
         * RB13 MotorB2         Output  Digital OC4
         * RB14 MotorA2         Output  Digital OC3
         */
        //set dir io
        TRISBbits.TRISB0 = true;
        TRISBbits.TRISB7 = false;
        TRISBbits.TRISB8 = false;
        TRISBbits.TRISB13 = false;
        TRISBbits.TRISB14 = false;
        //be not analog 
        ANSELBbits.ANSB0 = false;
        ANSELBbits.ANSB13 = false;
        ANSELBbits.ANSB14 = false;
        //pull-up
        CNPUBbits.CNPUB0 = true;

        //set function
        OCFAR = 0b0010; //FaultA
        RPB7R = 0b0101; //OC1
        RPB8R = 0b0101; //OC2
        RPB13R = 0b0101; //OC4
        RPB14R = 0b0101; //OC3
        //OC1
        OC1CONbits.ON = false;
        OC1CONbits.SIDL = false; //As idling ,work 
        OC1CONbits.OC32 = false; //16bit-timer
        OC1CONbits.OCFLT = false; //it is not fault status
        OC1CONbits.OCTSEL = 0; //timer 2
        OC1CONbits.OCM = 0b111; //it is pwm mode with fault pin. whne fault pin is active ,this module stop.
        OC1CONbits.ON = true;
        //OC2~OC4
        OC2CON = OC3CON = OC4CON = OC1CON; //there are equales for each of them.
        //OCx dt =0
        OC1R = OC2R = OC3R = OC4R = 0; //for this, output is 'L'

        //set up timer2
        T2CONbits.ON = false;
        T2CONbits.TGATE = false; //not using gate
        T2CONbits.TCKPS = 0; //division of clock
        T2CONbits.T32 = false; //16bit timer mode
        T2CONbits.TCS = false; //inside clock

        TMR2 = 0; //reset
        PR2 = TimerMax.Read();
        T2CONbits.ON = true;
    }

    PWM12::PWM12() {
        DtRaw(PWM::DirectionStop,tmath::Q16(0));
    }

    PWM12::PWM12(const PWM12& orig) {
        //nop
    }

    PWM12::~PWM12() {
        DtRaw(PWM::DirectionStop,tmath::Q16(0));
    }

    void PWM12::DtRaw(EnumDirection dir, tmath::Q16 dt) {
        switch (dir) {
            case PWM::DirectionStop:
                OC1RS = OC2RS = 0; //Stop
                break;
            case PWM::DirectionRight:
                if (Direction==PWM::DirectionLeft){
                    IFS0bits.T2IF=false;
                    OC1RS = OC2RS = 0; //Stop
                    while (!IFS0bits.T2IF);//wait for interrput of tiemr2
                }
                OC1RS=dt.raw;
                OC2RS=0;
                break;
            case PWM::DirectionLeft:
                if (Direction==PWM::DirectionRight){
                    IFS0bits.T2IF=false;
                    OC1RS =OC2RS=0;//Stop
                    while (!IFS0bits.T2IF);//equal form up
                }
                OC1RS=0;
                OC2RS= dir;
        }
        Direction=dir;
    }

    PWM34::PWM34(){
        DtRaw(PWM::DirectionStop,tmath::Q16(0));
    }
    
    PWM34::PWM34(const PWM& orig){
        
    }
    
    PWM34::~PWM34(){
        DtRaw(PWM::DirectionStop,tmath::Q16(0));
    }
    
    void PWM34::DtRaw(EnumDirection dir, tmath::Q16 dt){
        switch (dir) {
            case PWM::DirectionStop:
                OC3RS = OC4RS = 0; //Stop
                break;
            case PWM::DirectionRight:
                if (Direction==PWM::DirectionLeft){
                    IFS0bits.T2IF=false;
                    OC3RS = OC4RS = 0; //Stop
                    while (!IFS0bits.T2IF);//wait for interrput of tiemr2
                }
                OC3RS=dt.raw;
                OC4RS=0;
                break;
            case PWM::DirectionLeft:
                if (Direction==PWM::DirectionRight){
                    IFS0bits.T2IF=false;
                    OC3RS =OC4RS=0;//Stop
                    while (!IFS0bits.T2IF);//equal form up
                }
                OC3RS=0;
                OC4RS= dir;
        }
        Direction=dir;
    }

}