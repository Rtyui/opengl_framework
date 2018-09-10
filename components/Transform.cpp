/* Dynamic includes */
#include <glm/gtc/matrix_transform.hpp>
#include <glm/glm.hpp>

/* Static includes */
#include "Transform.hpp"

Transform::Transform() : m_position(glm::vec3(0.f, 0.f, 0.f)), m_rotation(glm::vec3(0.f, 0.f, 0.f)), m_scale(glm::vec3(1.f, 1.f, 1.f))
{
    UpdateMatrix();
}

Transform::~Transform()
{
}

void Transform::UpdateMatrix()
{
    m_transfMatrix = glm::mat4(1);
    m_transfMatrix = glm::translate(m_transfMatrix, glm::vec3(0.0f, 0.0f, -30.f));
    m_transfMatrix = glm::scale(m_transfMatrix, glm::vec3(1.f, 1.f, 1.f));
    m_transfMatrix = glm::rotate(m_transfMatrix, m_rotation.x, glm::vec3(1.f, 0.f, 0.f));
    m_transfMatrix = glm::rotate(m_transfMatrix, m_rotation.y, glm::vec3(0.f, 1.f, 0.f));
    m_transfMatrix = glm::rotate(m_transfMatrix, m_rotation.z, glm::vec3(0.f, 0.f, 1.f));
}

std::string Transform::GetSystemTag()
{
    return std::string("Transformer");
}