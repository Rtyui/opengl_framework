#include "StaticShader.hpp"

StaticShader::StaticShader() : Shader(vertexShader, fragmentShader)
{
}

StaticShader::~StaticShader()
{
}

void StaticShader::BindAttributes()
{
    BindAttribute(0, "position");
}