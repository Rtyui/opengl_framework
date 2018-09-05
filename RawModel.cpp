
#include "Debug.hpp"
#include "RawModel.hpp"

RawModel::RawModel(GLuint vaoId, int vertexCount)
{
    m_vaoId = vaoId;
    m_vertexCount = vertexCount;
}

RawModel::~RawModel()
{

}