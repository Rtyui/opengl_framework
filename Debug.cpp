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

void Debug::Log(const char* filename, const int line, const char* function, DebugType type, const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    char buf[LOG_BUF_SIZE];
    std::vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);

    currentTime = time(0);
    char *datetime = ctime(&currentTime);
    datetime[strlen(datetime) - 1] = '\0';

    std::string datetimeString(datetime);
    std::string filenameString(filename);
    std::string functionString(function);
    std::string lineString(std::to_string(line));
    std::string bufString(buf);

    datetimeString += std::string(DATETIME_COL_SIZE - datetimeString.size(), ' ');
    filenameString += std::string(FILENAME_COL_SIZE - filenameString.size(), ' ');
    functionString += std::string(FUNCTION_COL_SIZE - functionString.size(), ' ');
    lineString += std::string(LINE_COL_SIZE - lineString.size(), ' ');
    bufString += std::string(BUF_COL_SIZE - bufString.size(), ' ');

    std::string outLog(HEADER_COLOR);

    outLog += datetimeString + filenameString + functionString + lineString + std::string(COLOR_TAG_END);

    std::string logStart;

    switch(type)
    {
    case Info:
        logStart = std::string(INFO_COLOR);
        break;
    case Warning:
        logStart = std::string(WARNING_COLOR);
        break;
    case Error:
        logStart = std::string(ERROR_COLOR);
        break;
    }

    outLog += logStart + bufString + std::string(COLOR_TAG_END);

    std::cout << outLog << std::endl;
}

void Debug::Instantiate()
{
    if(g_debug != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_debug = new Debug();
}