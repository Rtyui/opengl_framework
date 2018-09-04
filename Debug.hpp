#pragma once
#include <iostream>

#define LOG_BUF_SIZE 1024

class Debug
{
public:

    static void Log(const char *fmt, ...);
};