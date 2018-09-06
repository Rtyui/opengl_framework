#pragma once
#include <glm/glm.hpp>
#include <SFML/Window.hpp>
class Camera
{

public:

    glm::vec3       m_position;
    float           m_pitch;
    float           m_yaw;
    float           m_roll;

public:

                    Camera();
                    ~Camera();
    void            Move(sf::Event &event);

};