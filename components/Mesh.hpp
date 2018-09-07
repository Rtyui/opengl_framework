#pragma once

#include <GL/glew.h>

class Mesh
{
// // // //
// Members
// // // //
public:
    GLuint      m_vaoId;
    int         m_vertexCount;
protected:
private:

// // // //
// Methods
// // // //
public:
                Mesh(GLuint vaoId, int vertexCount);
                ~Mesh();
protected:
private:
};