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

void StaticShader::BindAttributes()
{
    BindAttribute(0, "position");
    BindAttribute(1, "textureCoords");
}

void StaticShader::GetAllUniformLocations()
{
    m_transfMatrixLoc = GetUniformLocation("transformationMatrix");
    m_viewMatrixLoc = GetUniformLocation("viewMatrix");
    m_projMatrixLoc = GetUniformLocation("projectionMatrix");
}