/* 
 * File:   adc.h
 * Author: TERU
 *
 * Created on 2015/06/26, 17:53
 */

#ifndef ADC_H
#define	ADC_H
#include "../math/dsp.h"
namespace module{


class ADC {
public:
    //フィールド
    static const float ReferenceVoltage; //電圧基準ICの電圧[V]
    static const int MotorVoltageMax; //モーター電圧の最大値[V]
    static const float MotorAmpereMax; //モーター電流の最大値[A/V]
    
    static tmath::Q16 MotorVoltageRaw(); //なまの値　未実装
    static tmath::Q16 Motor1AmpereRaw();
    static tmath::Q16 Motor2AmpareRaw();
    
    float MotorVoltage(); //単位[V]    
    float Motor1Ampere();//電流値
    float Motor2Ampare();//電流値
    
    enum AnalogPinNames{
    AnalogPinNone=-1,
    AnalogPinMotor1Amp=12,
    AnalogPinMotor2Amp=9,
    AnalogPinMotorVlot=1
    };

private:
    static bool IsInitialized;//初期化済みかどうか
public:
    static void Initialize();
    static tmath::Q16 GetADCRaw(AnalogPinNames);  
    
private:
    static void SetUpADC();
    
};


}
#endif	/* ADC_H */

