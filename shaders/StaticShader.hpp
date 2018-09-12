#pragma once

/* Dynamic Includes */

/* Static includes */
#include "Shader.hpp"
#include "Light.hpp"

static const std::string vertexShader = "shaders/vertex_shader";
static const std::string fragmentShader = "shaders/fragment_shader";

class StaticShader : public Shader
{
// // // //
// Members
// // // //
public:
protected:
private:

    GLint           m_transfMatrixLoc;
    GLint           m_viewMatrixLoc;
    GLint           m_projMatrixLoc;
    GLint           m_lightPositionLoc;
    GLint           m_lightColorLoc;
    GLint           m_shineDamperLoc;
    GLint           m_reflectivityLoc;

// // // //
// Methods
// // // //
public:

                    StaticShader();
                    ~StaticShader();
    void            LoadTransformationMatrix(glm::mat4 matrix);
    void            LoadViewMatrix(glm::mat4 matrix);
    void            LoadProjectionMatrix(glm::mat4 matrix);
    void            LoadLight(Light *light);
    void            LoadMaterialProps(const float& shineDamper, const float& reflectivity);

protected:
    void            BindAttributes() override;
    void            GetAllUniformLocations() override;
private:
};