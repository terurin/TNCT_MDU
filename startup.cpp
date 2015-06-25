#include "startup.h"
#include "sys_config.h"

#define _SUPPRESS_PLIB_WARNING //将来性のための警告を無視する
#include <p32xxxx.h>
#include <plib.h>
#include <sys/cdefs.h>

#undef _SUPPRESS_PLIB_WARNING
//#include "Motor.h"
#include "dsp.h"
#include "Between.h"
#include "ErrorObject.h"
#include <string>
int main (){
    Between<Q16> test(Q16::FromFloat(0.9f),Q16::FromFloat(0.5f));
    
    init();
    while(1){
        
    }
}
void init(){



    SYSTEMConfigPerformance(System_Clock());
    mJTAGPortEnable(false);

    
    //init_adc();


}





















