#include "Component.hpp"
#include <iostream>

int Component::m_lastId = 0;

Component::Component()
{
    m_entity = NULL;
    m_id = m_lastId++;
}

Component::Component(Entity *entity) : m_entity(entity), m_id(m_lastId++)
{
}

Component::~Component()
{
}