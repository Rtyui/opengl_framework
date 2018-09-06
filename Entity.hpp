#pragma once
#include "TexturedModel.hpp"
#include <glm/glm.hpp>

class Entity
{
public:

    TexturedModel*          m_texturedModel;
    glm::vec3               m_position;
    glm::vec3               m_rotation;
    glm::vec3               m_scale;

public:

                            Entity();
                            Entity(TexturedModel* texturedModel, glm::vec3 position, glm::vec3 rotation, glm::vec3 scale);
                            ~Entity();

    void                    Translate(glm::vec3 translation);
    void                    Rotate(glm::vec3 rotation);
};