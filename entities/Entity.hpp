#pragma once
#include "Model.hpp"
#include <glm/glm.hpp>

class Entity
{
// // // //
// Members
// // // //
public:

    Model*                  m_model;
    glm::vec3               m_position;
    glm::vec3               m_rotation;
    glm::vec3               m_scale;
protected:
private:

// // // //
// Methods
// // // //
public:

                            Entity();
                            Entity(Model* model, glm::vec3 position, glm::vec3 rotation, glm::vec3 scale);
                            ~Entity();

    void                    Translate(glm::vec3 translation);
    void                    Rotate(glm::vec3 rotation);
protected:
private:
};