/* Dynamic Includes */
#include <iostream>

/* Static includes */
#include "Component.hpp"
#include "Debug.hpp"

int Component::lastId = 0;

Component::Component() : m_entity(NULL), m_id(lastId++)
{
}

Component::Component(Entity *entity) : m_entity(entity), m_id(lastId++)
{
}

Component::~Component()
{
}

std::string Component::GetSystemTag()
{
    elog(E, "No override for function GetSystemTag in component with id %d", m_id);
    return std::string("");
}