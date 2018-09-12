#pragma once

/* Dynamic Includes */
#include <glm/glm.hpp>
#include <SFML/Window.hpp>

/* Static Includes */
#include "Component.hpp"

class Camera : public Component
{
// // // //
// Members
// // // //
public:
    static Camera*  active;
protected:
private:

// // // //
// Methods
// // // //
public:

                    Camera();
                    Camera(const std::string &systemTag);
                    ~Camera();
    std::string     GetSystemTag();
protected:
private:
};