#include "ObjLoader.hpp"
#include "Debug.hpp"

#include <fstream>
#include <vector>
#include <glm/glm.hpp>
#include <sstream>
#include <iterator>

ObjLoader *g_objLoader = NULL;

void ObjLoader::Instantiate()
{
    if(g_objLoader != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_objLoader = new ObjLoader();
}

RawModel* ObjLoader::LoadObjModel(const std::string &filename)
{
    std::ifstream file;
    file.open(filename);

    std::vector<glm::vec3> vertices;
    std::vector<glm::vec2> textures;
    std::vector<glm::vec3> normals;
    std::vector<int> indices();

    std::string line;
    while(std::getline(file, line))
    {
        std::istringstream iss(line);
        std::vector<std::string> tokens{std::istream_iterator<std::string>{iss},
                                        std::istream_iterator<std::string>{}};

        if(tokens[0] == "v")
        {
            glm::vec3 vertex = glm::vec3(std::atoi(tokens[1].c_str()),
                                        std::atoi(tokens[2].c_str()),
                                        std::atoi(tokens[3].c_str()));
            vertices.push_back(vertex);
        }
        else if(tokens[0] == "vt")
        {
            glm::vec2 texture = glm::vec2(std::atoi(tokens[1].c_str()),
                                        std::atoi(tokens[2].c_str()));
            textures.push_back(texture);
        }
        else if(tokens[0] == "vn")
        {
            glm::vec3 normal = glm::vec3(std::atoi(tokens[1].c_str()),
                                        std::atoi(tokens[2].c_str()),
                                        std::atoi(tokens[3].c_str()));
            normals.push_back(normal);
        }
        else if(tokens[0] == "f")
        {
            std::vector<float> textureArray(vertices.size() * 2);
            std::vector<float> normalArray(vertices.size() * 3);

            
        }
    }
    return NULL;
}