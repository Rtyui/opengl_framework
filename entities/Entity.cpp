/* Dynamic Includes */

/* Static includes */
#include "Entity.hpp"
#include "Debug.hpp"
#include "System.hpp"

int Entity::nextId = 0;

Entity::Entity() : m_id(nextId++),
 m_name((std::string("Entity ") + std::to_string(m_id)).c_str()),
 m_components(new std::vector<Component*>())
{
}

Entity::Entity(const std::string &name) : m_id(nextId++),
 m_name(name),
 m_components(new std::vector<Component*>())
{
}

Entity::~Entity()
{
}

void Entity::AddComponent(Component *component)
{
    m_components->push_back(component);
    component->m_entity = this;
    System::RegisterNewComponent(component);
}
