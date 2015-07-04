/* 
 * File:   ｔArray.h
 * Author: TERU
 *
 * Created on 2015/07/01, 18:18
 */

#ifndef TARRAY_H
#define	TARRAY_H

#include "tArray.h"


namespace tlib {

    template <class T, unsigned int N>class StaticArray {
        T dat[N];
        unsigned int in,out;//queue見た場合の位置
    public:
        StaticArray();
        StaticArray(const T[] lst,unsigned int n);
        ~StaticArray();
        void Clone(const StaticArray& orig);//クローン作成
        
        unsigned int Count()const;//要素数を取得
        bool empty()const;
        const T& operator [](int i)const;//配列としての機能
        
        void back_push(const T& item);
        const T& back_top()const;
        void back_pop();
        
        void front_push(const T& orig);
        const T& front_top()const;
        void front_pop();
        
        
        
    private:

        StaticArray(const StaticArray&);//メモリー管理を明示化するため実装しない。
        


    };


    template <class T,unsigned int N>StaticArray<T,N>::StaticArray(){
        in=out=0;
    }
    template <class T, unsigned int N> StaticArray<T,N>::~StaticArray(){
        //nop
    }
    template <class T ,unsigned int N> void StaticArray<T,N>::Clone(const StaticArray& orig)const{
        unsigned int idx;
        for (idx=orig.in;idx>orig.out;idx++){
            dat[idx]=orig.dat[idx];
        }
    }
    
    template <class T, unsigned int N> int StaticArray<T,N>::Count()const{
        return in-out;
    }
    template <class T, unsigned int N> const T& StaticArray<T,N>::operator [](int idx)const{
        if (idx<0||N<=idx)throw;
        return dat[idx];
    }
    
    template <class T, unsigned int N> bool StaticArray<T, N>::empty() const{
        return in==out;
    }
    
    
    template <class T, unsigned int N> void StaticArray<T,N>::back_push(const T& item){
        if (in>=N)throw;
        dat[in++]=item;
    }
    
    template <class T, unsigned int N> const T& StaticArray<T,N>::back_top() const{
        return dat[in];
    }
    
    template <class T,unsigned int N> void StaticArray<T,N>::back_pop(){
        if (out>=in)throw;
        in--;
    }
    
    template<class T, unsigned int N >void StaticArray<T,N>::front_push(const T& item){
        if (out<=0)throw;
        dat[out--]=item;
    }
    
    template <class T, unsigned int N> const T& StaticArray<T,N>::back_top() const{
        return dat[out];
    }
    
    template <class T, unsigned int N> void StaticArray<T,N>::front_pop(){
        if (in<=out)throw;
        out++;
    }
    
    template <class T, unsigned int N> StaticArray<T,N>(const StaticArray& orig){
        //メモリー管理を明示化するため実装しない。
    }
}



#endif	/* ＴARRAY_H */

