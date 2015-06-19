


#ifndef MOTOR_H
#define	MOTOR_H
#include "dsp.h"
#include "sys_config.h"

class MotorA;
class MotorB;

class IMotor{
protected:
    static void SetUpADC();
    static void SetUpPWM();
public:
    //fi
    static const float  VoltageReference;//電圧基準ICの電圧[V]
    static const int    VoltageMotorPar;//モーター電圧の分圧比[倍]
    static const float  AmpereMotorPar;//モーター電流の変換値[A/V]
    static const uint16_t  TimerMax;//タイマー2の示せる最大値
    //static const int        
    
    //static void SetUpMotors();
    //用途　PWM,Timer,ADCの初期化

    
    static void     SetUpMotors();
    
    //モーター電圧の計測
    static Q16      MotorVoltageRaw();//なまの値　未実装
    static float    MotorVoltage();//単位[V]
    
    
    private:
        Q16 GetAD(AnalogPinNames);
};

class MotorA:public IMotor{
    friend IMotor;
    
};

class MotorB:public IMotor{
    friend IMotor;
    
};

#endif	/* MOTOR_H */

