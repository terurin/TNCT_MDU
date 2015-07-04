/* 
 * File:   adc.h
 * Author: TERU
 *
 * Created on 2015/06/26, 17:53
 */

#ifndef ADC_H
#define	ADC_H
#include "../math/dsp.h"

namespace ADC{

    //フィールド
    static const float REFERENCE_VOLTAGE = 2.048f; //電圧基準ICの電圧[V]
    static const int MOTOR_VOLTAGE_MAX = 32.768f; //モーター電圧の最大値[V]
    static const float MOTOR_AMPERE_MAX = 40.48f; //モーター電流の最大値[A/V]
    extern bool IsInitialized;  //初期化済みかどうか
    
    // 要修正
     enum AnalogPinNames{
        AnalogPinNone = -1,
        AnalogPinMotor1Amp = 12,
        AnalogPinMotor2Amp = 9,
        AnalogPinMotorVlot = 1
    };
      
    void Initialize();
    tmath::Q16 GetADCRaw(AnalogPinNames);  
    void SetUpADC();
 
    static inline tmath::Q16 MotorVoltageRaw(){
        return GetADCRaw(AnalogPinMotorVlot);
    }
   
    static inline tmath::Q16 Motor1AmpereRaw(){
        return GetADCRaw(AnalogPinMotor1Amp);
    }
    
    static inline tmath::Q16 Motor2AmpareRaw(){
        return GetADCRaw(AnalogPinMotor2Amp);
    }
    
    static inline float MotorVoltage(){ // 単位[V]
        return tmath::ToFloat(MotorVoltageRaw()) * MOTOR_VOLTAGE_MAX;
    }
    
    static inline float Motor1Ampere(){ // 電流値
        return tmath::ToFloat(Motor1AmpereRaw()) * MOTOR_AMPERE_MAX;
    }
   
    static inline float Motor2Ampare(){ // 電流値
        return tmath::ToFloat(Motor2AmpareRaw()) * MOTOR_AMPERE_MAX;
    }
    
}
#endif	/* ADC_H */
