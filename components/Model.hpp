#pragma once
#include "Mesh.hpp"
#include "Texture.hpp"
#include "Component.hpp"

class Model : public Component
{
// // // //
// Members
// // // //
public:
    Mesh*               m_mesh;
    Texture*            m_texture;
protected:
private:

// // // //
// Methods
// // // //
public:
                        Model();
                        Model(Mesh *mesh, Texture *texture);
                        ~Model() override;
protected:
private:
};