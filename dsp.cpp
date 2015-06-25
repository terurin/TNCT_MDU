#include <machine/int_limits.h>
#include "Between.h"
#include "dsp.h"

//フィールド及びプロパティ
uint16_t Q16::Read() const{
    return raw;
}

void Q16::Write(__int16_t t){
    raw=t;
}
//初期化関数
Q16::Q16(uint16_t var){
    raw=var;
}

Q16::Q16(const Q16& orig){
    raw=orig.raw;
}

Q16 Q16::FromFloat(float var) {
    return Q16(var * UINT16_MAX);
}




bool Q16::EqualWide(const Q16& expr, const Q16& error_range)const {
    return Between<uint16_t>(raw + error_range.raw, raw - error_range.raw).In(expr.raw);
}

bool Q16::NonEqualWide(const Q16& expr, const Q16& error_range) const{
    return Between<uint16_t>(raw + error_range.raw, raw - error_range.raw).Out(expr.raw);
}




float ToFloat(const Q16& var){
    return (float)var.Read()/UINT16_MAX;
}