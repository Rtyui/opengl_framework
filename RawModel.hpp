#pragma once

#include <GL/glew.h>

class RawModel
{
// Members
public:

    GLuint      m_vaoId;
    int         m_vertexCount;

//Methods
public:

                RawModel(GLuint vaoId, int vertexCount);
                ~RawModel();
};