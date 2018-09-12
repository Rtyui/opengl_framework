/* Dynamic Includes */
#include <SFML/Window/Keyboard.hpp>

/* Static Includes */
#include "FppCamera.hpp"
#include "Entity.hpp"
#include "Transform.hpp"
#include "Input.hpp"

FppCamera::FppCamera()
{
    m_systems.insert(std::pair<std::string, System*>("FppCamera", this));
}

FppCamera::~FppCamera()
{
}

void FppCamera::ProcessComponent(Component* component)
{
    Transform *transform = component->m_entity->GetComponent<Transform>();
    if(g_input->IsPressed(sf::Keyboard::W))
    {
        transform->position().z -= 0.1f;
    }
    else if(g_input->IsPressed(sf::Keyboard::S))
    {
        transform->position().z += 0.1f;
    }
    
    if(g_input->IsPressed(sf::Keyboard::A))
    {
        transform->position().x -= 0.1f;
    }
    else if(g_input->IsPressed(sf::Keyboard::D))
    {
        transform->position().x += 0.1f;
    }
    
    if(g_input->IsPressed(sf::Keyboard::Space))
    {
        transform->position().y += 0.1f;
    }
    else if(g_input->IsPressed(sf::Keyboard::LShift))
    {
        transform->position().y -= 0.1f;
    }
}

