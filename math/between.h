/* 
 * File:   between.h
 * Author: TERU
 *
 * Created on 2015/06/25, 18:06
 */
#ifndef BETWEEN_H
#define	BETWEEN_H
#include "math_basic.h"

namespace tmath {

    template <class T> class  between {
        T H;
        T L;
    public:
        //初期化関数
        between(){}
        
        between(const T& HiSide, const T& LowSide):H(HiSide),L(LowSide){}
        //後に実装する
        //template <U> between<U> CreateAll();//全集合
        //template <U> between<U> CreateZero();//空集合
        //プロパティ

        const T& GetH()const {
            return H;
        }

        const T& GetL()const {
            return L;
        }

        void SetH(const T& dest) {
            H = dest;
        }

        void SetL(const T& dest) {
            L = dest;
        }

        const T& Lenght()const {
            return tmath::Abs(H - L);
        };

        bool Reversed()const {
            return H<L;
        }

        //比較演算
        bool In(const T& exp)const;
        bool InWide(const T& exp)const;
        bool Out(const T& exp)const;
        bool OutWide(const T& exp)const;
        bool operator>(const T& exp)const;
        bool operator>=(const T& exp)const;
        bool operator<(const T& exp)const;
        bool operator<=(const T& exp)const;

        bool operator==(const between<T>& exp)const;
        const between<T>& operator~()const;

        const between<T>& operator&&(const between<T>& dest)const;

        //メソッド
        void Reverse();


    private:

    };





    template <class T> bool between<T>::In(const T& exp) const {
        return L < exp && exp<H;
    }

    template <class T> bool between<T>::InWide(const T& exp) const {
        return L <= exp && exp <= H;
    }

    template <class T> bool between<T>::Out(const T& exp) const {
        return exp < L || H<exp;
    }

    template<class T> bool between<T>::OutWide(const T& exp) const {
        return exp <= L || H <= exp;
    }

    template<class T>bool between<T>::operator<(const T& exp) const {
        return H<exp;
    }

    template <class T>bool between<T>::operator<=(const T& exp) const {
        return H <= exp;
    }

    template <class T> bool between<T>::operator>(const T& exp) const {
        return L>exp;
    }

    template <class T> bool between<T>::operator>=(const T& exp) const {
        return L >= exp;
    }

    template <class T> bool between<T>::operator==(const between<T>& exp) const {
        return H == exp.H && L == exp.L;
    }

    template <class T> const between<T>& between<T>::operator~() const {
        return between<T>(L, H); //Swap
    }

    template<class T> const between<T>& between<T>::operator&&(const between<T>& dest) const {
        return between<T>(tmath::Min(H, dest.H), tmath::Max(L, dest.L));
    }

    template <class T> void between<T>::Reverse() {
        tmath::Swap(H, L);
    }
}
#endif	/* BETWEEN_H */

