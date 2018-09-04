#include "Renderer.hpp"
#include "Stdincl.hpp"
#include <GL/glew.h>

Renderer *renderer = NULL;

Renderer::Renderer()
{
    if(renderer != NULL)
    {
        std::cerr << "Already created singleton for Renderer. Duplicates not allowed" << std::endl;
    }
    renderer = this;
}

Renderer::~Renderer()
{
}

void Renderer::ClearWindow()
{
    glClearColor(1.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}

void Renderer::Render(RawModel *rawModel)
{
    glBindVertexArray(rawModel->vaoId);
    glEnableVertexAttribArray(0);
    glDrawArrays(GL_TRIANGLES, 0, rawModel->vertexCount);
}