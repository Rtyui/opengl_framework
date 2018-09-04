#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <GL/glew.h>

#include "Stdincl.hpp"
#include "Shader.hpp"

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

int main()
{
    bool running = true;

    sf::Window *window = GetInitializedWindow();

    glewExperimental = GL_TRUE;
    glewInit();

    float vertices[] = {
        0.0f,  0.5f, // Vertex 1 (X, Y)
        0.5f, -0.5f, // Vertex 2 (X, Y)
        -0.5f, -0.5f  // Vertex 3 (X, Y)
    };

    GLuint vao;
    glGenVertexArrays(1, &vao);

    glBindVertexArray(vao);

    GLuint vbo;
    glGenBuffers(1, &vbo);

    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    Shader *shader = new Shader();
    Debug::Log("Created shaders");

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

        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        window->display();
    }

    delete shader;
    glDeleteBuffers(1, &vbo);
    glDeleteVertexArrays(1, &vao);
    return 0;
}