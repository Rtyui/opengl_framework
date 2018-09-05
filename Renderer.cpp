#include "Renderer.hpp"
#include "Debug.hpp"
#include <GL/glew.h>

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
    glClear(GL_COLOR_BUFFER_BIT);
}

void Renderer::Render(TexturedModel* texturedModel)
{
    RawModel *rawModel = texturedModel->m_rawModel;
    glBindVertexArray(rawModel->m_vaoId);
    glEnableVertexAttribArray(0);
    glDrawElements(GL_TRIANGLES, rawModel->m_vertexCount, GL_UNSIGNED_INT, 0);
    glDisableVertexAttribArray(0);
    glBindVertexArray(0);
}

void Renderer::Instantiate()
{
    if(g_renderer != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_renderer = new Renderer();
}