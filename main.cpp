#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <GL/glew.h>

#include "Debug.hpp"
#include "Shader.hpp"
#include "Loader.hpp"
#include "Renderer.hpp"
#include "StaticShader.hpp"
#include "Texture.hpp"
#include "TexturedModel.hpp"

sf::Window* GetInitializedWindow()
{
    sf::ContextSettings settings;
    settings.depthBits = 24;
    settings.stencilBits = 8;
    settings.antialiasingLevel = 2;
    settings.majorVersion = 3;
    settings.minorVersion = 2;
    settings.attributeFlags = sf::ContextSettings::Core;

    return new sf::Window(sf::VideoMode(800, 600), "OpenGL", sf::Style::Close, settings);

}

void CallContructorsForSingletons()
{
    Debug::Instantiate();
    Loader::Instantiate();
    Renderer::Instantiate();
}

int main()
{
    bool running = true;

    sf::Window *window = GetInitializedWindow();

    glewExperimental = GL_TRUE;
    glewInit();

    CallContructorsForSingletons();

    std::vector<float> vertices({
        -0.5f, 0.5f, 0,
        -0.5f, -0.5f, 0,
        0.5f, -0.5f, 0,
        0.5f, 0.5f, 0
    });
    std::vector<int> indices({
        0, 1, 3,
        3, 1, 2
    });

    StaticShader *shader = new StaticShader();
    RawModel *model = g_loader->CreateRawModel(vertices, indices);
    Texture *texture = new Texture(g_loader->LoadTexture("browser.png"));
    TexturedModel *texturedModel = new TexturedModel(model, texture);

    log("model id: %d, model vertices: %d", model->m_vaoId, model->m_vertexCount);

    sf::Event windowEvent;
    while(running)
    {
        while(window->pollEvent(windowEvent))
        {
            switch(windowEvent.type)
            {
            case sf::Event::Closed:
                running = false;
                break;
            case sf::Event::KeyPressed:
                if(windowEvent.key.code == sf::Keyboard::Escape)
                {
                    running = false;
                }
                break;
            default:
                break;
            }
        }

        g_renderer->ClearWindow();
        shader->Activate();
        g_renderer->Render(texturedModel);
        shader->Deactivate();
        window->display();
    }

    delete shader;
    delete g_loader;
    delete g_renderer;
    delete g_debug;
    delete model;
    delete texture;
    delete texturedModel;
    return 0;
}