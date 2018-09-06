#include "Entity.hpp"


Entity::Entity()
{
}

Entity::Entity(TexturedModel* texturedModel, glm::vec3 position, glm::vec3 rotation, glm::vec3 scale) :
m_texturedModel(texturedModel), m_position(position), m_rotation(rotation), m_scale(scale)
{
}

Entity::~Entity()
{
}

void Entity::Translate(glm::vec3 translation)
{
    m_position += translation;
}

void Entity::Rotate(glm::vec3 rotation)
{
    m_rotation += rotation;
}