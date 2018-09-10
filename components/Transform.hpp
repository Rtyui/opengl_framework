#pragma once

/* Dynamic includes */
#include <glm/glm.hpp>

/* Static includes */
#include "Component.hpp"

class Transform : public Component
{
// // // //
// Members
// // // //
public:
    glm::vec3&              position() { return m_position; }
    glm::vec3&              rotation() { return m_rotation; }
    glm::vec3&              scale() { return m_scale; }
    const glm::mat4&        transfMatrix() const { return m_transfMatrix; }
protected:
private:
    glm::vec3               m_position;
    glm::vec3               m_rotation;
    glm::vec3               m_scale;
    glm::mat4               m_transfMatrix;

// // // //
// Methods
// // // //
public:
                            Transform();
                            ~Transform();
    void                    UpdateMatrix();
    std::string             GetSystemTag() override;
protected:
private:
};