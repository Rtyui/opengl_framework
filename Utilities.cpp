
#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/rotate_vector.hpp>

#include "Utilities.hpp"
#include "Entity.hpp"
#include "Transform.hpp"
#include "Debug.hpp"


std::vector<std::string> split(std::string strToSplit, char delimeter)
{
    std::stringstream ss(strToSplit);
    std::string item;
    std::vector<std::string> splittedStrings;
    while (std::getline(ss, item, delimeter))
    {
       splittedStrings.push_back(item);
    }
    return splittedStrings;
}

glm::mat4 getViewMatrix(Camera *camera)
{
    Transform *transform = camera->m_entity->GetComponent<Transform>();
    if(!transform)
    {
        elog(E, "No transform on camera entity '%s'", camera->m_entity->name());
        exit(0);
    }

    glm::vec3 forward = glm::vec3(0.f, 0.f, -1.f);
    glm::rotate(forward, transform->rotation().x, glm::vec3(1.f, 0.f, 0.f));
    glm::rotate(forward, transform->rotation().y, glm::vec3(0.f, 1.f, 0.f));
    glm::rotate(forward, transform->rotation().z, glm::vec3(0.f, 0.f, 1.f));
    glm::normalize(forward);

    return glm::lookAt(transform->position(), transform->position() + forward, glm::vec3(0.f, 1.f, 0.f));
}
