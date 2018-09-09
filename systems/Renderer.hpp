#pragma once

/* Dynamic Includes */

/* Static Includes */
#include "Model.hpp"
#include "Entity.hpp"
#include "StaticShader.hpp"
#include "System.hpp"

class Renderer : public System
{
// // // //
// Members
// // // //
public:
protected:
private:

    static constexpr float  FOV = 70.f;
    static constexpr float  NEAR_PLANE = 0.1f;
    static constexpr float  FAR_PLANE = 1000.f;

    glm::mat4               m_projectionMatrix;
    StaticShader*           m_shader;

// // // //
// Methods
// // // //
public:
                            Renderer();
                            ~Renderer() override;
    void                    ClearWindow();
    void                    Render(Entity* entity, StaticShader* shader);

protected:
    void                    ProcessComponent(Component *component) override;

private:
};