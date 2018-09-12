/* Dynamic Includes */

/* Static Includes */
#include "Light.hpp"

Light::Light() : m_position(glm::vec3(0.f, 0.f, 0.f)), m_color(glm::vec3(1.f, 1.f, 1.f))
{
}

Light::Light(const glm::vec3& position, const glm::vec3& color) : m_position(position), m_color(color)
{
}

Light::~Light()
{
}
