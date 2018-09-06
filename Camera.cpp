#include "Camera.hpp"
#include "SFML/Window/Keyboard.hpp"

Camera::Camera()
{
    m_position = glm::vec3(0.f, 0.f, 5.f);
}

Camera::~Camera()
{
}

void Camera::Move(sf::Event &event)
{
    if(event.type == sf::Event::KeyPressed)
    {
        if(event.key.code == sf::Keyboard::A)
        {
            m_position += glm::vec3(-0.008f, 0.f, 0.f);
        }
        else if(event.key.code == sf::Keyboard::D)
        {
            m_position += glm::vec3(0.008f, 0.f, 0.f);
        }
    }
}