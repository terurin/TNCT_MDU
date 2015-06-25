


#ifndef MOTOR_H
#define	MOTOR_H
#include "dsp.h"
#include "sys_config.h"
#include "Between.h"
//前置宣言
class MotorA;
class MotorB;

class IMotor {
public:
    enum EnumDirection{
        DirectionStop=0,
        DirectionRgiht=1,
        DirectionLeft=-1
                
    };
    
    //フィールド及びプロパティ
    static const float ReferenceVoltage; //電圧基準ICの電圧[V]
    static const int MotorVoltageMax; //モーター電圧の分圧比[倍]
    static const float MotorAmpereMax; //モーター電流の最大値[A/V]
    static const Q16 TimerMax; //タイマー2の示せる最大値
    static const Between<Q16> DtRangeDefault;
    Q16 DtMax;
    Q16 DtMin;
    //static const int
    Q16 MotorVoltageRaw(); //なまの値　未実装
    float MotorVoltage(); //単位[V]    
    virtual Q16 MotorAmpereRaw() = 0;//ナマの電流値
    float MotorAmpere();//電流値
protected:
    Between<Q16> DtRange;
    
private:
    static bool IsInitialized;//初期化済みかどうか
    
public:
    //メソッド郡
    IMotor(const Between<Q16>& dt_range=DtRangeDefault);
    virtual ~IMotor();
    virtual void Dt(Q16 dt,bool dir){};//must 

    
    
    
 protected:
    //モーター電圧の計測
    static Q16 GetADCRaw(AnalogPinNames);  
private:
    static void SetUpADC();
    static void SetUpPWM();
};



class MotorA : public IMotor {

public:
    MotorA(const Between<Q16>& dt_range){}
    MotorA(const MotorA& orig){
        
    }
    ~MotorA();
    Q16 MotorAmpereRaw();
    void Dt(Q16 dt,bool direction);
    
};

class MotorB : public IMotor {
public:
    MotorB(const Between<Q16>& dt_range){}
    MotorB(const MotorB&){
        
    }
    ~MotorB();
    Q16 MotorAmpereRaw();
    void Dt(Q16 dt,bool direction);
};

#endif	/* MOTOR_H */

