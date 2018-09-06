#include "Renderer.hpp"
#include "Debug.hpp"
#include <GL/glew.h>
#include <glm/gtc/matrix_transform.hpp>

Renderer* g_renderer = NULL;

Renderer::Renderer()
{
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
    TexturedModel *texturedModel = entity->m_texturedModel;
    RawModel *rawModel = texturedModel->m_rawModel;
    glBindVertexArray(rawModel->m_vaoId);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);

    glm::mat4 transMat = glm::mat4(1);
    transMat = glm::translate(transMat, entity->m_position);
    transMat = glm::scale(transMat, entity->m_scale);
    transMat = glm::rotate(transMat, entity->m_rotation.x, glm::vec3(1.f, 0.f, 0.f));
    transMat = glm::rotate(transMat, entity->m_rotation.y, glm::vec3(0.f, 1.f, 0.f));
    transMat = glm::rotate(transMat, entity->m_rotation.z, glm::vec3(0.f, 0.f, 1.f));
    shader->LoadTransformationMatrix(transMat);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texturedModel->m_texture->m_textureId);
    glDrawElements(GL_TRIANGLES, rawModel->m_vertexCount, GL_UNSIGNED_INT, 0);
    glDisableVertexAttribArray(0);
    glDisableVertexAttribArray(1);
    glBindVertexArray(0);
}

void Renderer::Instantiate(StaticShader *shader)
{
    if(g_renderer != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_renderer = new Renderer();
    g_renderer->m_projectionMatrix = glm::perspective(FOV, 800.f / 600.f, NEAR_PLANE, FAR_PLANE);
    shader->Activate();
    shader->LoadProjectionMatrix(g_renderer->m_projectionMatrix);
    shader->Deactivate();
}