#include "Debug.hpp"
#include <cstdio>
#include <cstdarg>
#include <iostream>

void Debug::Log(const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    char buf[LOG_BUF_SIZE];
    std::vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);

    std::cout << buf << std::endl; 
}