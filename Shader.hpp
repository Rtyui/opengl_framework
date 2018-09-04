#pragma once
#include <string>
#include <GL/glew.h>

class Shader
{

// Members
private:

    std::string vertexShaderFile = "vertex_shader";
    std::string fragmentShaderFile = "fragment_shader";

    GLuint vertexShaderId;
    GLuint fragmentShaderId;
    GLuint programId;

public:

    static Shader* activeShader;
    bool isActive;

// Methods

public:

    Shader();
    ~Shader();

    void Activate();

private:

    void CreateProgram();
    void CompileShaders();
    void CreateAttribs();

};