/* Dynamic Includes */
#include <GL/glew.h>
#include <glm/gtc/matrix_transform.hpp>
#include <iterator>
#include <glm/glm.hpp>

/* Static Includes */
#include "Renderer.hpp"
#include "Debug.hpp"
#include "Camera.hpp"
#include "Transform.hpp"
#include "Entity.hpp"

Renderer::Renderer()
{
    m_shader = new StaticShader();
    m_shader->Initialize();
    m_projectionMatrix = glm::perspective(FOV, 800.f / 600.f, NEAR_PLANE, FAR_PLANE);
    m_shader->Activate();
    m_shader->LoadProjectionMatrix(m_projectionMatrix);
    m_shader->Deactivate();
    m_systems.insert(std::pair<std::string, System*>("Renderer", this));
}

Renderer::~Renderer()
{
}

void Renderer::ClearWindow()
{
    glClearColor(1.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void Renderer::Render(Entity* entity, StaticShader* shader)
{
    
}

void Renderer::ProcessComponent(Component *component)
{
    Model *model = CheckComponentType<Model>(component);
    ClearWindow();
    m_shader->Activate();
    Camera *camera = Camera::active;
    m_shader->LoadViewMatrix(glm::lookAt(camera->m_position, camera->m_position + glm::vec3(0.f, 0.f, -1.f), glm::vec3(0.f, 1.f, 0.f)));

    Mesh *mesh = model->m_mesh;
    glBindVertexArray(mesh->vaoId());
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);

    glm::mat4 transfMatrix = glm::mat4(1);
    if(Transform *transform = component->m_entity->GetComponent<Transform>())
    {
        transfMatrix = transform->transfMatrix();
    }

    m_shader->LoadTransformationMatrix(transfMatrix);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, model->m_texture->textureId());
    glDrawElements(GL_TRIANGLES, mesh->vertexCount(), GL_UNSIGNED_INT, 0);
    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
    glBindVertexArray(0);
    m_shader->Deactivate();
}