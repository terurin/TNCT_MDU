/* 
 * @File:   lcd.h
 * @date    2015/07/04
 * @author  4E Sekiguchi Keita
 * @brief   Controll LCD
 * 
 */

#ifndef LCD_H
#define	LCD_H

#include <xc.h>

namespace LCD{
    extern bool Locked;
    
    void Init(void);    // Initialize LCD
    void ClearDisplay(void);    // Clear Display
    void SetCursor(const int row,const int col);    
    void PutChar(const  char);
    void PutStr(const char*);
    
    static inline bool isLocked(void){
        return Locked;
    }
    
    static inline void Lock(void){
        Locked = true;
    }
    
    static inline void UnLock(void){
        Locked = false;
    }
}

#endif	/* LCD_H */