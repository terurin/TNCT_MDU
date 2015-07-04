/* 
 * File:   math_basic.h
 * Author: TERU
 *
 * Created on 2015/06/26, 16:10
 */

#ifndef MATH_BASIC_H
#define	MATH_BASIC_H

namespace tmath {

    template <class T>const T& Abs(const T& var){
        return var>0?var:-var;
    }

    template <class T> void Swap(T& a, T& b) {
        T temp;
        temp = a;
        a = b;
        b = a;
    }

    template <class T>void Swap(T* a, T* b) {
        T temp = *a;
        *a = *b;
        *b = temp;
    }

    template <class T>const T& Max(const T& a, const T& b) {
        return a > b ? a : b;
    }

    template <class T> const T& Min(const T& a, const T& b) {
        return a < b ? a : b;
    }
}
#endif	/* MATH_BASIC_H */

