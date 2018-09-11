#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <GL/glew.h>
#include <glm/gtc/matrix_transform.hpp>

#include "Debug.hpp"
#include "Shader.hpp"
#include "Renderer.hpp"
#include "StaticShader.hpp"
#include "Texture.hpp"
#include "Model.hpp"
#include "Camera.hpp"
#include "Transform.hpp"
#include "Transformer.hpp"
#include "Resources.hpp"

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
    Resources::Instantiate();
}

int main()
{
    bool running = true;

    sf::Window *window = GetInitializedWindow();

    glewExperimental = GL_TRUE;
    glewInit();
    glEnable(GL_DEPTH_TEST);

    CallContructorsForSingletons();

    Mesh *mesh = g_resources->GetMesh("stall");
    Texture *texture = g_resources->GetTexture("stallTexture");
    Model *model = new Model(mesh, texture);
    Transform *transform = new Transform();

    Renderer *renderer = new Renderer();
    Transformer *transformer = new Transformer();

    Entity *entity = new Entity();
    entity->AddComponent(model);
    entity->AddComponent(transform);

    Camera *camera = new Camera();

    sf::Event windowEvent;
    while(running)
    {
        while(window->pollEvent(windowEvent))
        {
            camera->Move(windowEvent);
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
        transformer->Update();
        renderer->Update();
        window->display();
    }

    delete camera;
    delete entity;
    delete renderer;
    delete g_debug;
    delete mesh;
    delete texture;
    delete g_resources;
    return 0;
}