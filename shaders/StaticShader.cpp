/* Dynamic Includes */

/* Static includes */
#include "StaticShader.hpp"
#include "Debug.hpp"

StaticShader::StaticShader() : Shader(vertexShader, fragmentShader)
{
}

StaticShader::~StaticShader()
{
}

void StaticShader::LoadTransformationMatrix(glm::mat4 matrix)
{
    LoadMatrix(m_transfMatrixLoc, matrix);
}

void StaticShader::LoadViewMatrix(glm::mat4 matrix)
{
    LoadMatrix(m_viewMatrixLoc, matrix);
}

void StaticShader::LoadProjectionMatrix(glm::mat4 matrix)
{
    LoadMatrix(m_projMatrixLoc, matrix);
}

void StaticShader::LoadLight(Light *light)
{
    LoadVector(m_lightPositionLoc, light->position());
    LoadVector(m_lightColorLoc, light->color());
}

void StaticShader::LoadMaterialProps(const float& shineDamper, const float& reflectivity)
{
    LoadFloat(m_shineDamperLoc, shineDamper);
    LoadFloat(m_reflectivityLoc, reflectivity);
}

void StaticShader::BindAttributes()
{
    BindAttribute(0, "position");
    BindAttribute(1, "textureCoords");
    BindAttribute(2, "normal");
}

void StaticShader::GetAllUniformLocations()
{
    m_transfMatrixLoc = GetUniformLocation("transformationMatrix");
    m_viewMatrixLoc = GetUniformLocation("viewMatrix");
    m_projMatrixLoc = GetUniformLocation("projectionMatrix");
    m_lightPositionLoc = GetUniformLocation("lightPosition");
    m_lightColorLoc = GetUniformLocation("lightColor");
    m_shineDamperLoc = GetUniformLocation("shineDamper");
    m_reflectivityLoc = GetUniformLocation("reflectivity");
}