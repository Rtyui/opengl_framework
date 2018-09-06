#pragma once
#include "TexturedModel.hpp"
#include "Entity.hpp"
#include "StaticShader.hpp"

class Renderer
{
// Memebers
private:

    static constexpr float FOV = 70.f;
    static constexpr float NEAR_PLANE = 0.1f;
    static constexpr float FAR_PLANE = 1000.f;

    glm::mat4       m_projectionMatrix;

// Methods
private:
                    Renderer();

public:
                    ~Renderer();
    void            ClearWindow();
    void            Render(Entity* entity, StaticShader* shader);
    static void     Instantiate(StaticShader *shader);
};

extern Renderer*    g_renderer;