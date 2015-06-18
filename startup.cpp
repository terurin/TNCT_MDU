#include "startup.h"
#include "sys_config.h"

#include <p32xxxx.h>
#include <plib.h>
//#include "Motor.h"
#include "dsp.h"
int main (){
    
    while(1){
        
    }
}
void init(){



    SYSTEMConfigPerformance(System_Clock());
    mJTAGPortEnable(false);

    init_port();
    init_adc();


}

void init_port(){

   /* PORTAを設定する
    * RA0 レファレンス電圧  Input   Anolog
    * RA1 モーター電圧      Input   Anolog
    * RA2 アドレス選択[3]   Input   Digital Pull-up
    * RA3 アドレス選択[2]   Input   Digital Pull-up
    * RA4 アドレス選択[0]   Input   Digital Pull-up
    */

    TRISA=0x001F;
    CNENA=0x001C;
    CNPUA=0x001C;
    ANSELA=0x0003;


    /*  PORTB を設定する
     * RB0 緊急停止         Input   Digital Pull-up
     * RB1 UART/nI2C        Input   Digital Pull-up
     * RB2 TX               Output  Digital Pull-up Uart
     * RB3 RX               Input   Digital Pull-up Uart

     * RB4 アドレス選択[1]  Input   Digital Pull-up
     * RB5 pickit
     * RB6 pickit
     * RB7 MotorA1          Output  Digital OC1

     * RB8 MotorB1          OutPut  Digital OC2
     * RB9 ReceivedLED      OutPut  Digital
     * RB10 nPinDebag       Input   Digital Pull-up
     * RB11 SelectedLED     Output  Digital

     * RB12 MotorF1         Input   Anolog
     * RB13 MotorB2         Output  Digital OC4
     * RB14 MotorA2         Output  Digital OC3
     * RB15 MotorF2         Input   Anolog
     */

    TRISB=0x941B;
    CNENA=0x040F;
    CNPUB=0x040F;
    ANSELB=0x9000;

}


#include <peripheral/adc10.h>
void init_adc(){

    /* 対象となるぴん
     * RA0 レファレンス電圧  Input   Anolog
     * RA1 モーター電圧      Input   Anolog AN1
     * RB12 MotorF1         Input   Anolog AN12
     * RB15 MotorF2         Input   Anolog AN9
     */

    /* モジュールを停止してから設定を行う。
     * 設定の内容は以下のようになる
     * 形式　32bit固定小数点型
     * Vref+ を使用
     * auto sampling by manual
     *

     */

    const int adc_config1 = ADC_MODULE_OFF|ADC_FORMAT_FRACT32|ADC_CLK_MANUAL|ADC_AUTO_SAMPLING_ON|ADC_SAMP_ON;
    const int adc_config2=  ADC_VREF_EXT_AVSS|ADC_SCAN_OFF|ADC_SAMPLES_PER_INT_3|ADC_ALT_BUF_OFF|ADC_ALT_INPUT_ON;
    const int adc_config3=  ADC_SAMPLE_TIME_5|ADC_CONV_CLK_SYSTEM|ADC_CONV_CLK_32Tcy;

    AD1CON1=adc_config1;
    AD1CON2=adc_config2;
    AD1CON3=adc_config3;
    //scanning pin
    AD1CSSLbits.CSSL1=true;
    AD1CSSLbits.CSSL9=true;
    AD1CSSLbits.CSSL12=true;
}

void init_oc(){

    /*ピンアサインを行う。設定は以下のとおりである。
     * RB7 MotorA1          Output  Digital OC1
    * RB8 MotorB1          OutPut  Digital OC2
     * RB13 MotorB2         Output  Digital OC4
     * RB14 MotorA2         Output  Digital OC3
*/
    RPB7R=0b0101;//OC1
    RPB8R=0b0101;//OC2
    RPB13R=0b0101;//OC4
    RPB14R=0b0101;//OC3

    




}


















