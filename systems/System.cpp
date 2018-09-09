/* Dynamic Includes */

/* Static Includes */
#include "System.hpp"

System::System()
{
    m_registeredComponents = new std::vector<Component*>();
}

System::~System()
{
    for(Component *component : *m_registeredComponents)
    {
        delete component;
    }
    delete m_registeredComponents;
}

void System::Update()
{
    for(Component *component : *m_registeredComponents)
    {
        ProcessComponent(component);
    }
}

void System::RegisterNewComponent(Component *component)
{
    if(dynamic_cast<Model*>(component))
    {
        
    }
}

void System::RegisterComponent(Component *component)
{
    m_registeredComponents->push_back(component);
}