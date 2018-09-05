#pragma once
#include <iostream>
#include <ctime>

#define LOG_BUF_SIZE        1024
#define DATETIME_COL_SIZE   25
#define FILENAME_COL_SIZE   20
#define FUNCTION_COL_SIZE   20
#define LINE_COL_SIZE       4
#define BUF_COL_SIZE        100

#define HEADER_COLOR        "\033[1;34m"
#define INFO_COLOR          "\033[1;32m"
#define WARNING_COLOR       "\033[1;33m"
#define ERROR_COLOR         "\033[1;31m"
#define COLOR_TAG_END       "\033[0m"

#define log(t, fmt, ...) g_debug->Log(__FILE__, __LINE__, __FUNCTION__, t, fmt, ##__VA_ARGS__)

#define I Info
#define W Warning
#define E Error

enum DebugType
{
    Info,
    Warning,
    Error
};

class Debug
{
// Members
private:

    time_t          currentTime;

// Methods
private:
                    Debug();

public:

                    ~Debug();

    void            Log(const char* filename, const int line, const char* function, DebugType type, const char *fmt, ...);     ///< Function that prints out a string format
    static void     Instantiate();
};

extern Debug*       g_debug;                    ///< Debug global singleton instance