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
#include "Utilities.hpp"

Renderer::Renderer() : System()
{
    m_models = std::map<Mesh*, std::vector<Model*>>();
    m_shader = new StaticShader();
    m_light = new Light(glm::vec3(10.f, 0.f, 0.f), glm::vec3(1.f, 1.f, 1.f));
    m_shader->Initialize();
    m_projectionMatrix = glm::perspective(FOV, 800.f / 600.f, NEAR_PLANE, FAR_PLANE);
    m_shader->Activate();
    m_shader->LoadProjectionMatrix(m_projectionMatrix);
    m_shader->Deactivate();
    m_systems.insert(std::pair<std::string, System*>("Renderer", this));
}

Renderer::~Renderer()
{
    delete m_shader;
    delete m_light;
}

void Renderer::ClearWindow()
{
    glClearColor(1.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void Renderer::ProcessComponent(Component *component)
{
    elog(E, "This should not be called");
}

void Renderer::ProcessComponents()
{
    ClearWindow();
    m_shader->Activate();
    Camera *camera = Camera::active;
    m_shader->LoadViewMatrix(getViewMatrix(camera));
    m_shader->LoadLight(m_light);
    
    Mesh *mesh;
    for(std::map<Mesh*, std::vector<Model*>>::iterator it = m_models.begin(); it != m_models.end(); ++it)
    {
        mesh = it->first;
        glBindVertexArray(mesh->vaoId());
        glEnableVertexAttribArray(0);
        glEnableVertexAttribArray(1);
        glEnableVertexAttribArray(2);

        Texture* texture;
        for(Model *model : it->second)
        {
            texture = model->m_texture;
            glm::mat4 transfMatrix = glm::mat4(1);
            if(Transform *transform = model->m_entity->GetComponent<Transform>())
            {
                transfMatrix = transform->transfMatrix();
            }
            else
            {
                elog(E, "No transform found on '%s'", model->m_entity->name());
                exit(0);
            }

            m_shader->LoadTransformationMatrix(transfMatrix);
            glActiveTexture(GL_TEXTURE0);
            glBindTexture(GL_TEXTURE_2D, texture->textureId());
            m_shader->LoadMaterialProps(texture->shineDamper(), texture->reflectivity());
            glDrawElements(GL_TRIANGLES, mesh->vertexCount(), GL_UNSIGNED_INT, 0);
        }
        glDisableVertexAttribArray(0);
        glDisableVertexAttribArray(1);
        glDisableVertexAttribArray(2);
        glBindVertexArray(0);
        m_shader->Deactivate();
    }
}

void Renderer::RegisterComponent(Component *component)
{
    Model *model = CheckComponentType<Model>(component);
    m_models[model->m_mesh].push_back(model);
    m_registeredComponents->push_back(component);
}
