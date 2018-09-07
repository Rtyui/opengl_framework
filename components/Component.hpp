#pragma once

class Entity;

class Component
{
// // // //
// Members
// // // //
public:
    Entity*             m_entity;
    int                 m_id;
protected:
private:
    static int          m_lastId;

// // // //
// Methods
// // // //
public:
                        Component();
                        Component(Entity *entity);
    virtual             ~Component();
protected:
private:

};