/*
 * @File    lcd.cpp
 * @date    2015/07/04
 * @author  4E Sekiguchi Keita
 * @brief   Controll LCD
 * 
 */

#include <xc.h>
#include "lcd.h"

namespace LCD{
    bool Locked;
    
    void Init(){
        UnLock();
    }
    
    void ClearDisplay(){
        Lock();
        //
        //
        UnLock();
    }
    
    void SetCursor(const int row, const int col){
        Lock();
        //
        //
        UnLock();
    }
    
    void PutChar(const char c){
        Lock();
        //
        //
        UnLock();
    }
    
    void PutStr(const char* Str){
        Lock();
        //
        //
        UnLock();
    }
}