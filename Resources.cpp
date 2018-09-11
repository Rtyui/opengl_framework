/* Dynamic Includes */
#include <boost/filesystem.hpp>
#include <boost/foreach.hpp>
#include <iterator>

/* Static Includes */
#include "Resources.hpp"
#include "Debug.hpp"
#include "Utilities.hpp"

using namespace boost::filesystem;

Resources *g_resources = NULL;


std::string Resources::resFolderName = std::string("resources/");

Resources::Resources()
{
    m_textures = std::map<std::string, Texture*>();
    m_meshes = std::map<std::string, Mesh*>();
    m_loader = new Loader();
    LoadResources();
}

Resources::~Resources()
{
    for(std::map<std::string, Texture*>::iterator it = m_textures.begin(); it != m_textures.end(); ++it)
    {
        delete it->second;
    }

    for(std::map<std::string, Mesh*>::iterator it = m_meshes.begin(); it != m_meshes.end(); ++it)
    {
        delete it->second;
    }

    delete m_loader;
}

void Resources::Instantiate()
{
    if(g_resources != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_resources = new Resources();
}

void Resources::LoadResources()
{
    path targetDir(resFolderName.c_str());

    recursive_directory_iterator iter(targetDir), eod;
    BOOST_FOREACH(path const& i, std::make_pair(iter, eod))
    {
        if(is_regular_file(i))
        {
            std::string filename = split(i.string(), '/').back();
            std::vector<std::string> tokens = split(filename, '.');
            if(tokens[1] == "png")
            {
                m_textures[tokens[0]] = m_loader->LoadTexture(i.string());
                elog(I, "Loaded new texture named '%s' from file '%s'", tokens[0].c_str(), i.string().c_str());
            }
            else if(tokens[1] == "obj")
            {
                m_meshes[tokens[0]] = m_loader->LoadObjModel(i.string());
                elog(I, "Loaded new mesh named '%s' from file '%s'", tokens[0].c_str(), i.string().c_str());
            }
        }
    }
}
Texture* Resources::GetTexture(const std::string &textureName)
{
    if(m_textures.find(textureName) != m_textures.end())
    {
        return m_textures[textureName];
    }
    elog(E, "No texture named: '%s'", textureName.c_str());
    return NULL;
}

Mesh* Resources::GetMesh(const std::string &meshName)
{
    if(m_meshes.find(meshName) != m_meshes.end())
    {
        return m_meshes[meshName];
    }
    elog(E, "No mesh named: '%s'", meshName.c_str());
    return NULL;
}