#pragma once
#include "Shader.hpp"

static const std::string vertexShader = "vertex_shader";
static const std::string fragmentShader = "fragment_shader";

class StaticShader : public Shader
{
private:

    GLint           m_transfMatrixLoc;
    GLint           m_viewMatrixLoc;
    GLint           m_projMatrixLoc;

public:

                    StaticShader();
                    ~StaticShader();
    void            LoadTransformationMatrix(glm::mat4 matrix);
    void            LoadViewMatrix(glm::mat4 matrix);
    void            LoadProjectionMatrix(glm::mat4 matrix);

protected:
    void            BindAttributes() override;
    void            GetAllUniformLocations() override;
};