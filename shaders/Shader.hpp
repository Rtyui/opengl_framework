#pragma once
#include <string>
#include <GL/glew.h>
#include <glm/glm.hpp>

class Shader
{

// Members
private:
    GLuint                  m_vertexShaderId;
    GLuint                  m_fragmentShaderId;
    GLuint                  m_programId;

public:
    static Shader*          m_activeShader;
    bool                    m_isActive;

// Methods

public:

                            Shader(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    virtual                 ~Shader();

    void                    Activate();
    void                    Deactivate();
    void                    Initialize();

private:

    void                    CreateProgram(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    void                    CompileShaders();
    void                    CreateAttribs();

protected:
    virtual void            BindAttributes();
    void                    BindAttribute(int attribute, const std::string &variableName);
    GLint                   GetUniformLocation(const char* uniformName);
    void                    LoadFloat(GLint location, GLfloat value);
    void                    LoadVector(GLint location, glm::vec3 vector);
    void                    LoadBool(GLint location, bool value);
    void                    LoadMatrix(GLint location, glm::mat4 matrix);
    virtual void            GetAllUniformLocations();


};