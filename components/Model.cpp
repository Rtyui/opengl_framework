/* Dynamic Includes */

/* Static includes */
#include "Model.hpp"

Model::Model()
{
    m_mesh = NULL;
    m_texture = NULL;
}

Model::Model(Mesh *mesh, Texture *texture)
{
    m_mesh = mesh;
    m_texture = texture;
}

Model::~Model()
{
}

std::string Model::GetSystemTag()
{
    return std::string("Renderer");
}
