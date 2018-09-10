#pragma once

/* Dynamic Includes */
#include <glm/glm.hpp>
#include <SFML/Window.hpp>

/* Static Includes */

class Camera
{
// // // //
// Members
// // // //
public:
    glm::vec3       m_position;
    float           m_pitch;
    float           m_yaw;
    float           m_roll;
    static Camera*  active;
protected:
private:

// // // //
// Methods
// // // //
public:

                    Camera();
                    ~Camera();
    void            Move(sf::Event &event);
protected:
private:
};