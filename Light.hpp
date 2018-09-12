#pragma once

/* Dynamic Includes */
#include <glm/glm.hpp>

/* Static Includes */

class Light
{
// // // //
// Members
// // // //
public:
    const glm::vec3&        position() const { return m_position; }
    const glm::vec3&        color() const { return m_color; }
protected:
private:
    glm::vec3               m_position;
    glm::vec3               m_color;

// // // //
// Members
// // // //
public:
                            Light();
                            Light(const glm::vec3& position, const glm::vec3& color);
                            ~Light();
protected:
private:
};