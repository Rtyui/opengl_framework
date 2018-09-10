#pragma once

/* Dynamic Includes */
#include <string>
#include <map>

/* Static Includes */
#include "Texture.hpp"
#include "Mesh.hpp"

class Resources
{
// // // //
// Members
// // // //
public:
    static std::string                  resFolderName;
protected:
private:
    std::map<std::string, Texture*>     m_textures;
    std::map<std::string, Mesh*>        m_meshes;

// // // //
// Methods
// // // //
public:
    void                                Initialize();
protected:
private:
};