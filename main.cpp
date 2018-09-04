#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <GL/glew.h>

#include "Stdincl.hpp"
#include "Shader.hpp"
#include "Loader.hpp"
#include "Renderer.hpp"

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
    Debug();
    Loader();
    Renderer();
}

int main()
{
    bool running = true;

    sf::Window *window = GetInitializedWindow();

    glewExperimental = GL_TRUE;
    glewInit();

    CallContructorsForSingletons();

    // float vertices[] = {
    //     -0.5f,  0.5f, 1.0f, 0.0f, 0.0f, // Top-left
    //     0.5f,  0.5f, 0.0f, 1.0f, 0.0f, // Top-right
    //     0.5f, -0.5f, 0.0f, 0.0f, 1.0f, // Bottom-right
    //     -0.5f, -0.5f, 1.0f, 1.0f, 1.0f  // Bottom-left
    // };
    std::vector<float> vertices = {
        -0.5f, 0.5f, 0.f,
        -0.5f, -0.5f, 0.f,
        0.5f, -0.5f, 0.f,
        0.5f, -0.5f, 0.f,
        0.5f, 0.5f, 0.f,
        -0.5f, 0.5f, 0.f
    };

    GLuint elements[] = {
        0, 1, 2,
        2, 3, 0
    };

    debug->Log("Works till here");

    //Shader *shader = new Shader();
    RawModel *model = loader->CreateRawModel(vertices);

    debug->Log("Works till there");


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

        renderer->ClearWindow();
        renderer->Render(model);

        window->display();
    }

    //delete shader;
    delete loader;
    delete renderer;
    delete debug;
    return 0;
}