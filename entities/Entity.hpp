#pragma once

/* Dynamic Includes */
#include <glm/glm.hpp>
#include <string>
#include <vector>

/* Static includes */
#include "Model.hpp"
#include "Component.hpp"


class Entity
{
// // // //
// Members
// // // //
public:
    const int                       id() const {return m_id;}
    const std::string&              name() const {return m_name;}
    const std::vector<Component*>*  components() const { return m_components;}
protected:
    int                             m_id;
    std::string                     m_name;
    std::vector<Component*>*        m_components;
private:
    static int                      nextId;

// // // //
// Methods
// // // //
public:
                                    Entity();
                                    Entity(const std::string &name);
                                    ~Entity();
    void                            AddComponent(Component *component);
protected:
private:
};