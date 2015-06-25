#ifndef BETWEEN_H
#define	BETWEEN_H

#include "ErrorObject.h"

//領域内にあるかどうか調べることに使う

class ErrorValueRelate;


template <class T>
class Between {
    T H;
    T L;
public:
    Between (T hi,T low){
        if (hi<low)throw ErrorValueRelate();
        H=hi;
        L=low;
    }
    
    
    const Between& operator = (const Between& orig){
        H=orig.H;
        L=orig.L;
        return *this;
    } 
    
    const T& GetH()const{
        return H;
    }
    
    const T& GetL()const{
        return L;
    }
    
    void SetH(const T& hi){
        H=hi;
    }
    void SetL(const T& low){
        L=low;
    }
    
    const T& Lenght ()const{
        return H-L;
    }
    
    
    
    //比較関数群
    //H>exp>L
    bool In(const T& exp)const{
        return H>exp&&exp>L;
    }
    //H>=exp>=L
    bool InWide(const T& exp)const{
        return H>=exp&&exp>=L;
    }
    
    //exp>H,L>exp
    bool Out(const T& exp)const{
        return exp>H||L>exp;
    }
    
    //exp>=H,L>=exp
    bool OutWide(const T& exp)const{
        return exp>=H||L>=exp;
    }
    
    //exp>H
    bool operator <(T exp)const{
        return exp>H;
    }
    bool operator <=(T exp)const{
        return exp>=H;
    }
    bool operator > (T exp)const{
        return L<exp;
    }
    bool operator >= (T exp)const{
        return L<=exp;
    }
    
    
    //値域をシフトする命令
    Between operator + (T t)const{
        return Between(H+t,L+t);
    }
    
    const Between& operator += (T t){
        H+=t;
        L+=t;
        return *this;
    }
    
    const Between& operator -= (T t){
        H-=t;
        L-=t;
        return *this;
    }
    
    Between operator -(T t)const {
        return Between(H-t,L-t);
    }
        
};

class ErrorValueRelate:public ErrorObject{
public:
    ErrorValueRelate();
    ErrorValueRelate(const ErrorValueRelate& orig);
    virtual ~ErrorValueRelate(){}

};


#endif	/* BETWEEN_H */

