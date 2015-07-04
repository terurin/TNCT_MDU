/* 
 * File:   uart.h
 * Author: TERU
 *
 * Created on 2015/06/28, 23:16
 */

#ifndef UART_H
#define	UART_H




namespace module {
    
    class UART1 {
        static bool IsInitialized;
        
    public:
        
        static void Initialize();
        UART1();
        UART1(const UART1& orig);
        virtual ~UART1();
        static void TransmitEnable(bool);
        
    private:
        static void SetUpUart();
        static void SetBand(unsigned long band);
    };
}
#endif	/* UART_H */

