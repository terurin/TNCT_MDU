#include "ErrorObject.h"

ErrorObject::ErrorObject(const char* error_text, int error_code) {
    text=error_text;
    code=error_code;
    
}


ErrorObject::ErrorObject() {
}
ErrorObject::ErrorObject(const ErrorObject& orig) {
}

ErrorObject::~ErrorObject() {
}

