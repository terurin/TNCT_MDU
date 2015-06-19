/* 作成者　3I 川上　輝
 * 作成日　2015/6/10
 * 用途　システム用の設定で変更不可
*/
#ifndef SYS_CONFIG_H
#define	SYS_CONFIG_H

#include <xc.h>

#define System_Clock() 40000000

/* PORT 設定

 * PORTAを設定する
RA0 レファレンス電圧  Input   Anolog
RA1 モーター電圧      Input   Anolog
RA2 アドレス選択[3]   Input   Digital Pull-up
RA3 アドレス選択[2]   Input   Digital Pull-up
RA4 アドレス選択[0]   Input   Digital Pull-up

 * PORTB を設定する
RB0 緊急停止         Input   Digital Pull-up
RB1 UART/nI2C        Input   Digital Pull-up
RB2 TX               Output  Digital Pull-up Uart
RB3 RX               Input   Digital Pull-up Uart

RB4 アドレス選択[1]  Input   Digital Pull-up
RB5 pickit
RB6 pickit
RB7 MotorA1          Output  Digital OC1
RB8 MotorB1          OutPut  Digital OC2
RB9 ReceivedLED      OutPut  Digital
RB10 nPinDebag       Input   Digital Pull-up
RB11 SelectedLED     Output  Digital
RB12 MotorF1         Input   Anolog
RB13 MotorB2         Output  Digital OC4
RB14 MotorA2         Output  Digital OC3
RB15 MotorF2         Input   Anolog
*/

//Input
#define IsDebag() PORTBbits.RB10
#define IsUart() PORTBbits.RB1
#define IsRapidBrake() PORTBbits.RB0


/* GetAddress()
 * address_t Selected Addressから取得したデータ
 * 用途　アドレスの取得
 * 作成者　川上　輝
 * 場所　config.c
 */
typedef unsigned char address_t;
extern address_t GetAddress();


//Output
#define ReceivedLED(fag) (LATBbits.LATB9=fag)
#define SelectedLED(fag) (LATBbits.LATB11=fag)


enum AnalogPinNames{
    AnalogPinNone,
    AnalogPinMotorAmpA,
    AnalogPinMotorAmpB,
    AnalogPinMotorVlot
};




#endif	
