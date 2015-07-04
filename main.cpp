/* 
 * File:   main.cpp
 * Author: Keita
 *
 * Created on 2015/07/04, 9:36
 */

#include <xc.h>

#include "system/startup.h"
#include "system/sys_config.h"
#include "driver/adc.h"
#include "driver/dma.h"
#include "driver/IModule.h"
#include "driver/Motor.h"
#include "driver/uart.h"
#include "driver/lcd.h"
#include "driver/gpio.h"
#include "math/math_typedef.h"
#include "math/math_basic.h"
#include "math/dsp.h"
#include "math/between.h"
#include "math/Q16.h"
#include "const.h"
#include "ErrorObject.h"
#include "queue.h"
#include "user_config.h"


int main() {

#if defined _DFU_
    
#elif defined _APP_
    
#endif
    
    while(true){
        
    }
    
    return 0;
}

