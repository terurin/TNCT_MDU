/* 
 * File:   dsp.h
 * 作成者　川上　輝
 *
 * Created on 2015/06/13, 1:57
 */

#ifndef DSP_H
#define	DSP_H

#include <stdint.h>
#include <assert.h>
/* dsp用の方を宣言する
*
 */

class Q16{
private:
    uint16_t raw;
public:
    uint16_t Read(){return raw;};
    void Write(int16_t t){raw=t;}
    
    Q16(){}
    Q16(uint16_t var){
        raw=var;
    }
    Q16(const Q16& orig){
        raw=orig.raw;
    }
    
    ~Q16(){}
    
    static Q16 FromFloat(float var){
        return var*UINT16_MAX;
    }
    
    Q16 operator =(Q16 var){
        return Q16(raw=var.raw); 
    }
    
    Q16 operator +=(Q16 var){
        return Q16(raw+=var.raw);
    }
    Q16 operator -=(Q16 var){
        return Q16(raw-=var.raw);
    }
    Q16 operator *=(Q16 var){
        raw=((uint32_t)(raw*var.raw))>>16;
        return Q16(raw);
    }
    Q16 operator /=(Q16 var){
        raw=((uint32_t)raw<<16/var.raw);
        return Q16(raw);
    }
    
    Q16 operator +(Q16 var){
        return Q16(raw+var.raw);
    }
    
    Q16 operator -(Q16 var){
        return Q16(raw-var.raw);
    }
    Q16 operator *(Q16 var){
        return Q16(((uint32_t)(raw*var.raw))>>16);
    }
    Q16 operator *(uint16_t var){
        return Q16(raw*var);
    }
    Q16 operator / (Q16 var){
        return Q16((uint32_t)raw<<16/var.raw);
    }
    Q16 operator / (int var){
        return Q16(raw/var);
    }
    friend float ToFloat(Q16 var);
};

float ToFloat(Q16 var);



#endif	/* DSP_H */

