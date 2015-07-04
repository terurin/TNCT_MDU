/* 
 * File:   pwm.h
 * Author: TERU
 *
 * Created on 2015/06/26, 18:18
 */

#ifndef PWM_H
#define	PWM_H

#include "../math/dsp.h"
#include "../math/between.h"
namespace module {

    class PWM {
    public:
        const static tmath::between<tmath::Q16> RangeDefault;
        static const tmath::Q16 TimerMax;
        enum EnumDirection {
            DirectionStop = 0,
            DirectionRight,
            DirectionLeft
        };
    protected:
        
        tmath::between<tmath::Q16> Range;
        EnumDirection Direction;
    private:
        static bool IsInitialized; //初期化済みかどうか
    public:
        PWM();
        PWM(const PWM& orig);
        virtual ~PWM();
        virtual void DtRaw(EnumDirection dir, tmath::Q16 dt=tmath::Q16(0)) = 0;
        void DtLimited(EnumDirection dir,tmath::Q16 dt);//レンジを用いた安全設定
        
        //Dt(EnumDirection dir,tmath::Q16 dt);//limited for
        
        static void Initialize();
    private:
        static void SetUpPWM();
    };

    class PWM12 : public PWM {
    public:
        PWM12();
        PWM12(const PWM12& orig);
        ~PWM12();


        void DtRaw(EnumDirection dir, tmath::Q16 dt);
    };
    
    class PWM34: public PWM{
    public:
        PWM34();
        PWM34(const PWM& orig);
        ~PWM34();
        void DtRaw(EnumDirection dir,tmath::Q16 dt);
    };
    
}
#endif	/* PWM_H */

