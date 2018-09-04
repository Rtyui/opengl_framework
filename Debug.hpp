#pragma once
#include <iostream>

#define LOG_BUF_SIZE 1024

class Debug
{
public:

    Debug();
    ~Debug();

    void Log(const char *fmt, ...);     ///< Function that prints out a string format
};

extern Debug* debug;                    ///< Debug global singleton instance