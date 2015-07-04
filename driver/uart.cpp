/* 
 * File:   uart.cpp
 * Author: TERU
 * 
 * Created on 2015/06/28, 23:16
 */

#include "uart.h"
#include <p32xxxx.h>
#include "../system/sys_config.h"
#define _SUPPRESS_PLIB_WARNING //将来性のための警告を無視する
#include <peripheral/dma_1xx_2xx.h>
#undef _SUPPRESS_PLIB_WARNING
#define DATA_9BIT_NONE 0b11
#define DATA_8BIT_ODD 0b10
#define DATA_8BIT_EVEN 0b01
#define DATA_8BIT_NONE 0b00

namespace module {

    bool UART1::IsInitialized = false;

    void UART1::Initialize() {
        SetUpUart();
        IsInitialized = true;
    }

    UART1::UART1() {

    }

    UART1::UART1(const UART1& orig) {
    }

    UART1::~UART1() {
    }

    void UART1::SetUpUart(){
        /* ピン設定
         * UART TX PORTB(2) digtal out pull-up
         * UART RX PORTB(3) digtal in pull-up
         */
        
        //入出力設定
        TRISBbits.TRISB2=false;
        TRISBbits.TRISB3=true;
        //デジタルピンに設定
        ANSELBbits.ANSB2=false;
        ANSELBbits.ANSB3=false;
        //Pull-up
        CNPUBbits.CNPUB2=true;
        CNPUBbits.CNPUB3=true;
        //Pull-down
        CNPDBbits.CNPDB2=false;
        CNPDBbits.CNPDB3=false;
        //module conection
        U1RXR=0b0100;//RB2
        RPB3R=0b0001;//TX
        
        //uart configuration
        
        U1MODEbits.ON=false;//for changing
        
        //極性設定
        U1MODEbits.RXINV=false;//Rx
        U1STAbits.UTXINV=false;//Tx
        //送受信許可
        U1STAbits.URXEN=true;//Recive
        U1STAbits.UTXEN=false;//Tramsmit
        //RTS CTS
        U1MODEbits.UEN=0b00;//no use
        //通信フォーマット
        U1MODEbits.PDSEL=DATA_8BIT_EVEN;
        U1MODEbits.STSEL=false;//Stop Bit
        U1MODEbits.BRGH=true;//高速通信モード
        SetBand(9600);
        U1STAbits.ADM_EN=false;//no use addressing mode
        //割り込みタイミング
        U1STAbits.UTXISEL=0b10;//when buffer empty
        U1STAbits.URXISEL=0b10;//when buffer has 3 datas.
        
        //DMA設定
        
        
        
    }
    
    void UART1::SetBand(unsigned long band){
        U1BRG=System_Clock()/(band<<4)-1;        
    }
    
}

