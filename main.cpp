#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <GL/glew.h>
#include <glm/gtc/matrix_transform.hpp>

#include "Debug.hpp"
#include "Shader.hpp"
#include "Loader.hpp"
#include "Renderer.hpp"
#include "StaticShader.hpp"
#include "Texture.hpp"
#include "Model.hpp"
#include "Camera.hpp"
#include "Transform.hpp"
#include "ObjLoader.hpp"
#include "Transformer.hpp"

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
    ObjLoader::Instantiate();
}

int main()
{
    bool running = true;

    sf::Window *window = GetInitializedWindow();

    glewExperimental = GL_TRUE;
    glewInit();
    glEnable(GL_DEPTH_TEST);

    CallContructorsForSingletons();

    Mesh *mesh = g_objLoader->LoadObjModel("stall.obj");
    Texture *texture = new Texture(g_loader->LoadTexture("stallTexture.png"));
    Model *model = new Model(mesh, texture);
    Transform *transform = new Transform();

    Renderer *renderer = new Renderer();
    Transformer *transformer = new Transformer();

    elog(I, "model id: %d, model vertices: %d", mesh->vaoId(), mesh->vertexCount());
    Entity *entity = new Entity();
    entity->AddComponent(model);
    entity->AddComponent(transform);
    elog(I, "new entity name: '%s', id: %d", entity->name().c_str(), entity->id());

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

    elog(I, "stuff here");
    delete camera;
    delete entity;
    delete g_loader;
    delete renderer;
    delete g_debug;
    delete mesh;
    delete texture;
    return 0;
}