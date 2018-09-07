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
#include "ObjLoader.hpp"

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

    StaticShader *shader = new StaticShader();
    shader->Initialize();
    Mesh *mesh = g_objLoader->LoadObjModel("stall.obj");
    Texture *texture = new Texture(g_loader->LoadTexture("stallTexture.png"));
    Model *model = new Model(mesh, texture);

    shader->Activate();
    Renderer *renderer = new Renderer();
    shader->Deactivate();
    renderer->RegisterComponent(model);

    // elog(I, "model id: %d, model vertices: %d", model->m_vaoId, model->m_vertexCount);
    elog(I, "This is an info log");
    elog(W, "This is an warning log");
    elog(E, "This is an error log");

    //Entity *entity = new Entity(model, glm::vec3(0.0f, 0.0f, -30.f), glm::vec3(0.f, 0.f, 0.f), glm::vec3(1.f, 1.f, 1.f));

    Camera *camera = new Camera();

    sf::Event windowEvent;
    while(running)
    {
        //entity->Rotate(glm::vec3(0.f, 0.003f, 0.f));
        //entity->Translate(glm::vec3(0.f, 0.f, -0.002f));
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

        renderer->ClearWindow();
        shader->Activate();
        shader->LoadViewMatrix(glm::lookAt(camera->m_position, camera->m_position + glm::vec3(0.f, 0.f, -1.f), glm::vec3(0.f, 1.f, 0.f)));
        //g_renderer->Render(entity, shader);
        renderer->Update();
        shader->Deactivate();
        window->display();
    }

    delete shader;
    delete camera;
    //delete entity;
    delete g_loader;
    //delete g_renderer;
    delete g_debug;
    delete mesh;
    delete texture;
    delete model;
    return 0;
}