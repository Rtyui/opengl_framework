#pragma once

/* Dynamic Includes */
#include <string>
#include <GL/glew.h>
#include <glm/glm.hpp>

/* Static includes */

class Shader
{
// // // //
// Members
// // // //
public:
    const bool&             isActive() const { return m_isActive; }
    static Shader*          m_activeShader;
protected:
private:
    GLuint                  m_vertexShaderId;
    GLuint                  m_fragmentShaderId;
    GLuint                  m_programId;
    bool                    m_isActive;

// // // //
// Methods
// // // //
public:

                            Shader(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    virtual                 ~Shader();

    void                    Activate();
    void                    Deactivate();
    void                    Initialize();

protected:
    virtual void            BindAttributes();
    void                    BindAttribute(int attribute, const std::string &variableName);
    GLint                   GetUniformLocation(const char* uniformName);
    void                    LoadFloat(GLint location, GLfloat value);
    void                    LoadVector(GLint location, glm::vec3 vector);
    void                    LoadBool(GLint location, bool value);
    void                    LoadMatrix(GLint location, glm::mat4 matrix);
    virtual void            GetAllUniformLocations();

private:

    void                    CreateProgram(const std::string &vertexShaderFile, const std::string &fragmentShaderFile);
    void                    CompileShaders();
    void                    CreateAttribs();
};