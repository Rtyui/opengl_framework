#pragma once
/* Dynamic includes */
#include <string>

/* Static includes */

class Entity;

class Component
{
// // // //
// Members
// // // //
public:
    const int&              id() const { return m_id; }
    Entity*                 m_entity;
protected:
    int                     m_id;
private:
    static int              lastId;

// // // //
// Methods
// // // //
public:
                            Component();
                            Component(Entity *entity);
    virtual                 ~Component();
    virtual std::string     GetSystemTag();
protected:
private:

};