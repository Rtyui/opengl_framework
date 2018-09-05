#include "Debug.hpp"
#include <cstdio>
#include <cstdarg>
#include <iostream>
#include <iomanip>
#include <string.h>

Debug *g_debug = NULL;

Debug::Debug()
{
}

Debug::~Debug()
{
}

void Debug::Log(const char* filename, const int line, const char* function, const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    char buf[LOG_BUF_SIZE];
    std::vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);

    currentTime = time(0);
    char *datetime = ctime(&currentTime);
    datetime[strlen(datetime) - 1] = '\0';

    std::string bufString(buf);
    bufString = std::string("\033[1;31m") + bufString;
    bufString = bufString + std::string("\033[0m");

    std::cout << std::setw(DATETIME_COL_SIZE) << datetime << 
                std::setw(FILENAME_COL_SIZE) << filename << 
                std::setw(FUNCTION_COL_SIZE) << function << 
                std::setw(LINE_COL_SIZE) << line <<
                std::setw(BUF_COL_SIZE) << bufString << std::endl;
}

void Debug::Instantiate()
{
    if(g_debug != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_debug = new Debug();
}