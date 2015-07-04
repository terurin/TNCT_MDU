/* 
 * File:   Q16.h
 * Author: TERU
 *
 * Created on 2015/06/28, 3:49
 */

#ifndef Q16_H
#define	Q16_H

#include "math_typedef.h"

namespace tmath{
struct Q16{
    //フィールド及びプロパティ
    uint16_t raw;
    uint16_t Read()const;
    void Write(int16_t t);
    //初期化関数
    explicit Q16(uint16_t var=0);
    Q16(const Q16& orig);
    
    static Q16 FromFloat(float var);
    //演算子群
    Q16 operator =(const Q16& var){
        return Q16(raw=var.raw); 
    }
    
    Q16 operator +=(const Q16& var){
        return Q16(raw+=var.raw);
    }
    Q16 operator -=(const Q16& var){
        return Q16(raw-=var.raw);
    }
    Q16 operator *=(const Q16& var){
        raw=((uint32_t)(raw*var.raw))>>16;
        return Q16(raw);
    }
    Q16 operator /=(const Q16& var){
        raw=((uint32_t)raw<<16/var.raw);
        return Q16(raw);
    }
    
    Q16 operator +(const Q16& var)const{
        return Q16(raw+var.raw);
    }
    
    Q16 operator -(const Q16& var)const{
        return Q16(raw-var.raw);
    }
    Q16 operator *(const Q16& var)const{
        return Q16(((uint32_t)(raw*var.raw))>>16);
    }
    Q16 operator *(uint16_t var)const{
        return Q16(raw*var);
    }
    Q16 operator / (const Q16& var){
        return Q16((uint32_t)raw<<16/var.raw);
    }
    Q16 operator / (int var){
        return Q16(raw/var);
    }
    
    bool operator >(const Q16& expr)const{
        return raw>expr.raw;
    }
    bool operator >=(const Q16& expr)const{
        return raw>expr.raw;
    }
    bool operator <(const Q16& expr)const{
        return raw<expr.raw;
    }
    bool operator <=(const Q16& expr)const{
        return raw<=expr.raw;
    }
    
    bool operator ==(const Q16& expr)const{
        return raw==expr.raw;
    }
    
    //だいたい同じであることを表す演算子
    bool EqualWide(const Q16& expr,const Q16& error_range)const;
   
    bool operator !=(const Q16& expr)const{
        return raw!=expr.raw;
    }
    //だいたい同じではないを表す演算子
    bool NonEqualWide(const Q16& expr,const Q16& error_range)const;
    
    
    
    
    friend float ToFloat(const Q16& var);
};

float ToFloat(const Q16& var);

}

#endif	/* Q16_H */

