#pragma once

/* Dynamic Includes */
#include <vector>
#include <map>

/* Static Includes */
#include "Component.hpp"

class System
{
// // // //
// Members
// // // //
public:
protected:
    std::vector<Component*>*                m_registeredComponents;
private:
    static std::map<std::string, System*> m_systems;

// // // //
// Methods
// // // //
public:
                                            System();
    virtual                                 ~System();
    virtual void                            Update();
    virtual void                            ProcessComponent(Component *component) = 0;
    static void                             RegisterNewComponent(Component *component);
protected:
    void                                    RegisterComponent(Component *component);
private:

};