#include "Shader.hpp"
#include "Debug.hpp"
#include "Debug.hpp"

#include <iostream>
#include <fstream>

Shader* Shader::activeShader = NULL;

Shader::Shader(const std::string &vertexShaderFile, const std::string &fragmentShaderFile)
{
    CreateProgram(vertexShaderFile, fragmentShaderFile);
    isActive = false;
}

Shader::~Shader()
{
    // Detach shaders
    glDetachShader(m_programId, m_vertexShaderId);
    glDetachShader(m_programId, m_fragmentShaderId);

    // Delete shaders and program
    glDeleteShader(m_vertexShaderId);
    glDeleteShader(m_fragmentShaderId);
    glDeleteProgram(m_programId);
}

void Shader::Activate()
{
    isActive = true;
    glUseProgram(m_programId);
    Shader::activeShader = this;
}

void Shader::Deactivate()
{
    isActive = false;
    glUseProgram(0);
    Shader::activeShader = NULL;

}

void Shader::CreateProgram(const std::string &vertexShaderFile, const std::string &fragmentShaderFile)
{
    std::ifstream vertexShaderStream(vertexShaderFile);
    std::ifstream fragmentShaderStream(fragmentShaderFile);

    std::string vertexShaderContent((std::istreambuf_iterator<char>(vertexShaderStream)), std::istreambuf_iterator<char>());
    std::string fragmentShaderContent((std::istreambuf_iterator<char>(fragmentShaderStream)), std::istreambuf_iterator<char>());

    m_vertexShaderId = glCreateShader(GL_VERTEX_SHADER);
    m_fragmentShaderId = glCreateShader(GL_FRAGMENT_SHADER);

    const char *vertexShaderContentBuf = vertexShaderContent.data();
    glShaderSource(m_vertexShaderId, 1, &vertexShaderContentBuf, NULL);
    const char *fragmentShaderContentBuf = fragmentShaderContent.data();
    glShaderSource(m_fragmentShaderId, 1, &fragmentShaderContentBuf, NULL);

    CompileShaders();

    m_programId = glCreateProgram();
    glAttachShader(m_programId, m_vertexShaderId);
    glAttachShader(m_programId, m_fragmentShaderId);

    glLinkProgram(m_programId);
    glValidateProgram(m_programId);
}

void Shader::CompileShaders()
{
    GLuint shaders[] = {m_vertexShaderId, m_fragmentShaderId};

    for(GLuint shaderId : shaders)
    {
        glCompileShader(shaderId);
        GLint status;
        glGetShaderiv(shaderId, GL_COMPILE_STATUS, &status);

        if(status != GL_TRUE)
        {
            log("Bad status for shader %d", shaderId);
            char buffer[512];
            glGetShaderInfoLog(shaderId, sizeof(buffer), NULL, buffer);
            log(buffer);
            exit(0);
        }
    }
    log("Compiled Shaders");
}

void Shader::BindAttributes()
{
}

void Shader::BindAttribute(int attribute, const std::string &variableName)
{
    glBindAttribLocation(m_programId, attribute, variableName.c_str());
}