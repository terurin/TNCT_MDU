#include <machine/int_limits.h>

#include "dsp.h"







float ToFloat(Q16 var){
    return (float)var.raw/UINT16_MAX;
}