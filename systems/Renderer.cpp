/* Dynamic Includes */
#include <GL/glew.h>
#include <glm/gtc/matrix_transform.hpp>
#include <iterator>

/* Static Includes */
#include "Renderer.hpp"
#include "Debug.hpp"

Renderer::Renderer()
{
    m_shader = new StaticShader();
    m_projectionMatrix = glm::perspective(FOV, 800.f / 600.f, NEAR_PLANE, FAR_PLANE);
    m_shader->Activate();
    m_shader->LoadProjectionMatrix(m_projectionMatrix);
    m_shader->Deactivate();
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
    Model *model = dynamic_cast<Model*>(component);
    if(!model)
    {
        for(std::vector<Component*>::iterator it = m_registeredComponents->begin(); it != m_registeredComponents->end(); ++it)
        {
            if((*it)->m_id == component->m_id)
            {
                m_registeredComponents->erase(it);
                break;
            }
        }
        elog(W, "Trying to process a component of other type than Model; removing it");
        return;
    }

    Mesh *mesh = model->m_mesh;
    glBindVertexArray(mesh->m_vaoId);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);

    glm::mat4 transMat = glm::mat4(1);
    transMat = glm::translate(transMat, glm::vec3(0.0f, 0.0f, -30.f));
    transMat = glm::scale(transMat, glm::vec3(1.f, 1.f, 1.f));
    transMat = glm::rotate(transMat, 0.f, glm::vec3(1.f, 0.f, 0.f));
    transMat = glm::rotate(transMat, 0.f, glm::vec3(0.f, 1.f, 0.f));
    transMat = glm::rotate(transMat, 0.f, glm::vec3(0.f, 0.f, 1.f));
    
    m_shader->LoadTransformationMatrix(transMat);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, model->m_texture->m_textureId);
    glDrawElements(GL_TRIANGLES, mesh->m_vertexCount, GL_UNSIGNED_INT, 0);
    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
    glBindVertexArray(0);
}