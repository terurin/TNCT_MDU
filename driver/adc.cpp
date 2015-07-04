/* 
 * File:   adc.cpp
 * Author: TERU
 * 
 * Created on 2015/06/26, 17:53
 */

#include "adc.h"
#include "../system/sys_config.h"

namespace ADC {

    
    bool IsInitialized = false;
   
    
    void Initialize() {
        SetUpADC();
        IsInitialized = true;
    }

    tmath::Q16 GetADCRaw(AnalogPinNames pin_name) {
        AD1CHSbits.CH0SA = pin_name;
        AD1CON1bits.SAMP = true;
        while (AD1CON1bits.SAMP); //wait while adconverting
        return tmath::Q16(ADC1BUF0);
    }

    void SetUpADC() {
        /* 対象となるぴん
         * RA10 レファレンス電圧  Input   Anolog
         * RB4 モーター電圧      Input   Anolog AN4
         * RB12 MotorF1         Input   Anolog AN12
         * RB15 MotorF2         Input   Anolog AN15
         */

        //dir
        TRISBbits.TRISB4 = true;
        TRISAbits.TRISA10 = true;
        TRISBbits.TRISB12 = true;
        TRISBbits.TRISB15 = true;
        //make pins analog
        ANSELBbits.ANSB4 = true;
        ANSELAbits.ANSA10 = true;
        ANSELBbits.ANSB12 = true;
        ANSELBbits.ANSB15 = true;


        //wake up ad-module
        AD1CON1bits.ADON = false; //wake down this module for changing configuration
        AD1CON1bits.ADSIDL = false; //as idelling,is it work?.     //Vss
        AD1CON1bits.FORM = 0b010; //Q16
        AD1CON1bits.SSRC = 0b000; //manual convert
        AD1CON1bits.ASAM = false; //not auto convert

        AD1CON2bits.VCFG = 0b001; //Vref+ AVss
        AD1CON2bits.OFFCAL = false; //for knowing ofset voltage ,but it is disenable
        AD1CON2bits.CSCNA = false; //not using scan
        AD1CON2bits.SMPI = 0; //when happen interrupt, how many count is ?
        AD1CON2bits.BUFM = false; //not split buffer
        AD1CON2bits.ALTS = false; //not using convert A/B

        AD1CON3bits.ADRC = false; //fron system-clock
        AD1CON3bits.SAMC = 5; //Tad
        AD1CON3bits.ADCS = 2; //division of clock

        AD1CHSbits.CH0NA = 0; //Vr-

        AD1CON1bits.ON = true; //wake up!!
    }



}


