#pragma once

#include <GL/glew.h>

class RawModel
{
// Members
public:

    GLuint      vaoId;
    int         vertexCount;

//Methods
public:

                RawModel(GLuint _vaoId, int _vertexCount);
                ~RawModel();
};