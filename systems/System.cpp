/* Dynamic Includes */

/* Static Includes */
#include "System.hpp"
#include "Model.hpp"
#include "Transform.hpp"

std::map<std::string, System*> System::m_systems = std::map<std::string, System*>();

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

void System::UpdateAll()
{
    for(std::map<std::string, System*>::iterator it = m_systems.begin(); it != m_systems.end(); ++it)
    {
        it->second->Update();
    }
}

void System::DeleteAll()
{
    for(std::map<std::string, System*>::iterator it = m_systems.begin(); it != m_systems.end(); ++it)
    {
        delete it->second;
    }
}

void System::Update()
{
    ProcessComponents();
}

void System::ProcessComponents()
{
    for(Component *component : *m_registeredComponents)
    {
        ProcessComponent(component);
    }
}

void System::RegisterNewComponent(Component *component)
{
    std::string systemTag = component->GetSystemTag();
    if(systemTag == "None")
    {
        return;
    }
    if(m_systems[systemTag])
    {
        m_systems[systemTag]->RegisterComponent(component);
        elog(I, "Registered new component to system '%s'", systemTag.c_str());
    }
    else
    {
        elog(WR, "No system compatible with component with id %d", component->id());
    }
}

void System::RegisterComponent(Component *component)
{
    m_registeredComponents->push_back(component);
}