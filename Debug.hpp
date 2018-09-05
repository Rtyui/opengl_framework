#pragma once
#include <iostream>
#include <ctime>

#define LOG_BUF_SIZE 1024
#define DATETIME_COL_SIZE 25
#define FILENAME_COL_SIZE 20
#define FUNCTION_COL_SIZE 20
#define LINE_COL_SIZE 4
#define BUF_COL_SIZE 100

#define log(fmt, ...) g_debug->Log(__FILE__, __LINE__, __FUNCTION__, fmt, ##__VA_ARGS__)

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

    void            Log(const char* filename, const int line, const char* function, const char *fmt, ...);     ///< Function that prints out a string format
    static void     Instantiate();
};

extern Debug*       g_debug;                    ///< Debug global singleton instance