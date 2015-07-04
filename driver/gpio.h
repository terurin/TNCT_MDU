/* 
 * File:   gpio.h
 * Author: Keita
 *
 * Created on 2015/07/04, 9:50
 */

#ifndef GPIO_H
#define	GPIO_H

#define SetOut(PIN,STATE) (PIN = STATE) // 指定のピンを指定の出力にセット
#define GetIn(PIN) (PIN) // 指定のピンの状態を取得

#define IN_LOW   0  // 入力,LOW
#define IN_HIGH  1  // 入力,HIGH
#define OUT_LOW  0  // 出力,LOW
#define OUT_HIGH 1  // 出力,HIGH

#define BOOT_ENABLE


namespace GPIO{
    
    void Init();
}

#endif	/* GPIO_H */