#pragma once

/* Dynamic Includes */
#include <string>
#include <map>

/* Static Includes */
#include "Texture.hpp"
#include "Mesh.hpp"
#include "Loader.hpp"

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
    Loader*                             m_loader;

// // // //
// Methods
// // // //
public:
                                        Resources();
                                        ~Resources();
    static void                         Instantiate();
    Texture*                            GetTexture(const std::string &textureName);
    Mesh*                               GetMesh(const std::string &meshName);
protected:
private:
    void                                LoadResources();
    void                                SearchInDirectory();
};

extern Resources *g_resources;