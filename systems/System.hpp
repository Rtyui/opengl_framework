#pragma once

/* Dynamic Includes */
#include <vector>

/* Static Includes */
#include "Component.hpp"

class System
{
// // // //
// Members
// // // //
public:
protected:
    std::vector<Component*>*        m_registeredComponents;
private:

// // // //
// Methods
// // // //
public:
                                    System();
    virtual                         ~System();
    virtual void                    Update();
    virtual void                    ProcessComponent(Component *component) = 0;
    void                            RegisterComponent(Component *component);
protected:
private:

};