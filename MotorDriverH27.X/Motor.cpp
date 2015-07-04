/* 
 * File:   Motor.cpp
 * Author: TERU
 * 
 * Created on 2015/06/13, 1:49
 */

#include "Motor.h"

void initialize_motor(){
    module::ADC::Initialize();
    module::PWM::Initialize();
    
    
}