/* Dynamic Includes */

/* Static Includes */
#include "Camera.hpp"
#include "SFML/Window/Keyboard.hpp"

Camera* Camera::active = NULL;

Camera::Camera()
{
    Camera::active = this;
}

Camera::~Camera()
{
}

std::string Camera::GetSystemTag()
{
    return "None";
}