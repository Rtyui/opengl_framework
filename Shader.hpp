#pragma once
#include <string>
#include <GL/glew.h>

class Shader
{

// Members
private:

    std::string vertexShaderFile = "vertex_shader";
    std::string fragmentShaderFile = "fragment_shader";

    GLuint m_vertexShaderId;
    GLuint m_fragmentShaderId;
    GLuint m_programId;

public:

    static Shader* activeShader;
    bool isActive;

// Methods

public:

                            Shader(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    virtual                 ~Shader();

    void                    Activate();
    void                    Deactivate();

private:

    void                    CreateProgram(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    void                    CompileShaders();
    void                    CreateAttribs();

protected:
    virtual void            BindAttributes();
    void                    BindAttribute(int attribute, const std::string &variableName);

};