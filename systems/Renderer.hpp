#pragma once

/* Dynamic Includes */
#include <map>

/* Static Includes */
#include "Model.hpp"
#include "Entity.hpp"
#include "StaticShader.hpp"
#include "System.hpp"
#include "Light.hpp"

class Renderer : public System
{
// // // //
// Members
// // // //
public:
protected:
private:

    static constexpr float                  FOV = 70.f;
    static constexpr float                  NEAR_PLANE = 0.1f;
    static constexpr float                  FAR_PLANE = 1000.f;

    glm::mat4                               m_projectionMatrix;
    StaticShader*                           m_shader;
    Light*                                  m_light;
    std::map<Mesh*, std::vector<Model*>>    m_models;

// // // //
// Methods
// // // //
public:
                                            Renderer();
                                            ~Renderer() override;
    void                                    ClearWindow();

protected:
    void                                    ProcessComponent(Component *component) override;
    void                                    ProcessComponents() override;
    void                                    RegisterComponent(Component *component) override;

private:
};