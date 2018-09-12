/* Dynamic Includes */
#include <GL/glew.h>

/* Static Includes */
#include "App.hpp"
#include "Debug.hpp"
#include "Resources.hpp"
#include "Model.hpp"
#include "Renderer.hpp"
#include "Transform.hpp"
#include "Transformer.hpp"
#include "Camera.hpp"
#include "Input.hpp"
#include "Light.hpp"
#include "FppCamera.hpp"

App::App()
{
    Debug::Instantiate(); // separately because its needed to debug other functionalities
    
    CreateWindow();
    InitializeOpenGL();
    InstantiateSingletons();
}

App::~App()
{
    delete m_window;
    DeleteSingletons();
}

void App::CreateWindow()
{

    sf::ContextSettings settings;
    settings.depthBits = 24;
    settings.stencilBits = 8;
    settings.antialiasingLevel = 2;
    settings.majorVersion = 3;
    settings.minorVersion = 2;
    settings.attributeFlags = sf::ContextSettings::Core;

    m_window = new sf::Window(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "OpenGL", sf::Style::Close, settings);
    elog(I, "Created window!");
}

void App::InstantiateSingletons()
{
    Resources::Instantiate();
    Input::Instantiate();
    elog(I, "Instantiated singletons!");
}

void App::DeleteSingletons()
{
    delete g_resources;
    delete g_input;
    elog(I, "Deleted singletons!");
    delete g_debug;
}

void App::InitializeOpenGL()
{
    glewExperimental = GL_TRUE;
    glewInit();
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    elog(I, "Initialized opengl!");
}

void App::Run()
{
    elog(I, "Running");
    m_running = true;

    Mesh *mesh = g_resources->GetMesh("dragon");
    Texture *texture = g_resources->GetTexture("teal");
    Model *model = new Model(mesh, texture);
    Transform *transform = new Transform();

    Renderer *renderer = new Renderer();
    Transformer *transformer = new Transformer();
    FppCamera *fppCamera = new FppCamera();
    if(renderer && transformer && fppCamera)
    {
    }

    Entity *object = new Entity("Object");
    object->AddComponent(model);
    object->AddComponent(transform);

    Entity *cameraEntity = new Entity("CameraEntity");
    Camera *camera = new Camera();
    Transform *cameraTransform = new Transform("None");
    cameraEntity->AddComponent(camera);
    cameraEntity->AddComponent(cameraTransform);

    cameraTransform->position().y = 1.f;
    cameraTransform->position().z = 10.f;
    
    while(m_running)
    {
        g_input->Update();
        if(g_input->IsJustPressed(sf::Keyboard::Escape))
        {
            m_running = false;
        }
        CheckWindowEvent();
        System::UpdateAll();
        m_window->display();
    }

    delete object;
    delete cameraEntity;
    System::DeleteAll();
}

void App::CheckWindowEvent()
{
    while(m_window->pollEvent(m_event))
    {
        switch(m_event.type)
        {
        case sf::Event::Closed:
            m_running = false;
            break;
        default:
            break;
        }
    }
}
