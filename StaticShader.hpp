#pragma once
#include "Shader.hpp"

static const std::string vertexShader = "vertex_shader";
static const std::string fragmentShader = "fragment_shader";

class StaticShader : public Shader
{
private:

public:

    StaticShader();
    ~StaticShader();

protected:
    void            BindAttributes() override;
};