
#include "Debug.hpp"
#include "Mesh.hpp"

Mesh::Mesh(GLuint vaoId, int vertexCount)
{
    m_vaoId = vaoId;
    m_vertexCount = vertexCount;
}

Mesh::~Mesh()
{

}