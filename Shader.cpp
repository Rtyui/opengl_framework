#include "Shader.hpp"
#include "Stdincl.hpp"

#include <iostream>
#include <fstream>

Shader* Shader::activeShader = NULL;

Shader::Shader()
{
    CreateProgram();
    isActive = false;
}

Shader::~Shader()
{
    // Detach shaders
    glDetachShader(programId, vertexShaderId);
    glDetachShader(programId, fragmentShaderId);

    // Delete shaders and program
    glDeleteShader(vertexShaderId);
    glDeleteShader(fragmentShaderId);
    glDeleteProgram(programId);
}

void Shader::Activate()
{
    isActive = true;
    glUseProgram(programId);
}

void Shader::CreateProgram()
{
    // Create file descriptors
    std::ifstream vertexShaderStream(vertexShaderFile);
    std::ifstream fragmentShaderStream(fragmentShaderFile);
    debug->Log("Created fds");

    // Read files into strings
    std::string vertexShaderContent((std::istreambuf_iterator<char>(vertexShaderStream)), std::istreambuf_iterator<char>());
    std::string fragmentShaderContent((std::istreambuf_iterator<char>(fragmentShaderStream)), std::istreambuf_iterator<char>());
    debug->Log("Read files");

    // Create the shaders ids
    vertexShaderId = glCreateShader(GL_VERTEX_SHADER);
    fragmentShaderId = glCreateShader(GL_FRAGMENT_SHADER);
    debug->Log("Created shader ids");

    // Fill shader source
    const char *vertexShaderContentBuf = vertexShaderContent.data();
    glShaderSource(vertexShaderId, 1, &vertexShaderContentBuf, NULL);
    const char *fragmentShaderContentBuf = fragmentShaderContent.data();
    glShaderSource(fragmentShaderId, 1, &fragmentShaderContentBuf, NULL);
    debug->Log("Filled shader sources");

    // Compile shaders
    CompileShaders();

    // Combining into program
    programId = glCreateProgram();
    glAttachShader(programId, vertexShaderId);
    glAttachShader(programId, fragmentShaderId);

    //glBindFragDataLocation(programId, 0, "outColor");
    glLinkProgram(programId);

    debug->Log("Created Program");
}

void Shader::CompileShaders()
{
    GLuint shaders[] = {vertexShaderId, fragmentShaderId};

    for(GLuint shaderId : shaders)
    {
        glCompileShader(shaderId);
        GLint status;
        glGetShaderiv(shaderId, GL_COMPILE_STATUS, &status);

        if(status != GL_TRUE)
        {
            debug->Log("Bad status for shader %d", shaderId);
            char buffer[512];
            glGetShaderInfoLog(shaderId, sizeof(buffer), NULL, buffer);
            debug->Log(buffer);
            exit(0);
        }
    }
    debug->Log("Compiled Shaders");
}