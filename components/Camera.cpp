/* Dynamic Includes */

/* Static Includes */
#include "Camera.hpp"
#include "SFML/Window/Keyboard.hpp"

Camera* Camera::active = NULL;

Camera::Camera()
{
    Camera::active = this;
    m_systemTag = "FppCamera";
}

Camera::Camera(const std::string &systemTag)
{
    Camera::active = this;
    m_systemTag = systemTag;
}

Camera::~Camera()
{
}

std::string Camera::GetSystemTag()
{
    return m_systemTag;
}