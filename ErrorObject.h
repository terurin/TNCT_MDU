/* 
 * File:   ErrorObject.h
 * Author: TERU
 *
 * Created on 2015/06/24, 17:45
 */

#ifndef ERROROBJECT_H
#define	ERROROBJECT_H

#include <string>
#include <stdio.h>

class ErrorObject {
    std::string text;
    int code;
public:
    ErrorObject(int error_code,std::string error_text);
    ErrorObject(const ErrorObject& orig);
    virtual ~ErrorObject();
private:

};

#endif	/* ERROROBJECT_H */

