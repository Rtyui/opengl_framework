#pragma once

/* Dynamic Includes */
#include <vector>
#include <map>

/* Static Includes */
#include "Component.hpp"
#include "Debug.hpp"

class System
{
// // // //
// Members
// // // //
public:
protected:
    std::vector<Component*>*                m_registeredComponents;
    static std::map<std::string, System*>   m_systems;
private:

// // // //
// Methods
// // // //
public:
                                            System();
    virtual                                 ~System();
    static void                             UpdateAll();
    static void                             DeleteAll();
    virtual void                            Update();
    virtual void                            ProcessComponent(Component *component) = 0;
    static void                             RegisterNewComponent(Component *component);
protected:
    template <typename T>
    T*                                      CheckComponentType(Component *component)
    {
        T *tobj = dynamic_cast<T*>(component);
        if(!tobj)
        {
            for(std::vector<Component*>::iterator it = m_registeredComponents->begin(); it != m_registeredComponents->end(); ++it)
            {
                if((*it)->id() == component->id())
                {
                    m_registeredComponents->erase(it);
                    break;
                }
            }
            elog(W, "Trying to process a component of other type than '%s'; removing it", typeid(T).name());
            return NULL;
        }
        else
        {
            return tobj;
        }
    }
    virtual void                            ProcessComponents();
    virtual void                            RegisterComponent(Component *component);
private:

};