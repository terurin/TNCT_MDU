#include "startup.h"
#include "sys_config.h"

#define _SUPPRESS_PLIB_WARNING //将来性のための警告を無視する
#define  _DISABLE_OPENADC10_CONFIGPORT_WARNING //ADC Warming is disenable
#include <plib.h>
#undef _DISABLE_OPENADC10_CONFIGPORT_WARNING
#undef _SUPPRESS_PLIB_WARNING
//#include "Motor.h"
#include "dsp.h"
#include "ErrorObject.h"
#include <string>
#include <Cpp/vector>
int main (){
     
    
    
    init();
    while(1){
        
    }
}
void init(){



    SYSTEMConfigPB(System_Clock());
    mJTAGPortEnable(false);
    
    
    


}





















