#pragma once

/* Dynamic Includes */
#include <GL/glew.h>

/* Static includes */

class Mesh
{
// // // //
// Members
// // // //
public:
    const GLuint&   vaoId() const { return m_vaoId; }
    const int&      vertexCount() const { return m_vertexCount; }
protected:
    GLuint      m_vaoId;
    int         m_vertexCount;
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