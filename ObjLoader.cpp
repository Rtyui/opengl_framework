#include "ObjLoader.hpp"
#include "Debug.hpp"
#include "Loader.hpp"
#include "Utilities.hpp"

#include <fstream>
#include <glm/glm.hpp>
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

Mesh* ObjLoader::LoadObjModel(const std::string &filename)
{
    elog(I, "");
    std::ifstream file;
    file.open(filename);

    std::vector<glm::vec3> vertices;
    std::vector<glm::vec2> textures;
    std::vector<glm::vec3> normals;
    std::vector<int> indices;

    std::vector<float> texturesArray;
    std::vector<float> normalsArray;
    std::vector<float> verticesArray;

    std::string line;
    while(std::getline(file, line))
    {
        std::istringstream iss(line);
        std::vector<std::string> tokens{std::istream_iterator<std::string>{iss},
                                        std::istream_iterator<std::string>{}};

        if(tokens[0] == "v")
        {
            glm::vec3 vertex = glm::vec3(std::stof(tokens[1]),
                                        std::stof(tokens[2]),
                                        std::stof(tokens[3]));
            vertices.push_back(vertex);
        }
        else if(tokens[0] == "vt")
        {
            glm::vec2 texture = glm::vec2(std::stof(tokens[1]),
                                        std::stof(tokens[2]));
            textures.push_back(texture);
        }
        else if(tokens[0] == "vn")
        {
            glm::vec3 normal = glm::vec3(std::stof(tokens[1]),
                                        std::stof(tokens[2]),
                                        std::stof(tokens[3]));
            normals.push_back(normal);
        }
        else if(tokens[0] == "f")
        {
            texturesArray = std::vector<float>(vertices.size() * 2);
            normalsArray = std::vector<float>(vertices.size() * 3);
            break;
        }
    }

    do
    {
        std::istringstream iss(line);
        std::vector<std::string> tokens{std::istream_iterator<std::string>{iss},
                                        std::istream_iterator<std::string>{}};

        if(tokens[0] == "f")
        {
            std::vector<std::string> vertex1 = split(tokens[1], '/');
            std::vector<std::string> vertex2 = split(tokens[2], '/');
            std::vector<std::string> vertex3 = split(tokens[3], '/');

            ProcessVertex(vertex1, indices, textures, normals, &texturesArray, &normalsArray);
            ProcessVertex(vertex2, indices, textures, normals, &texturesArray, &normalsArray);
            ProcessVertex(vertex3, indices, textures, normals, &texturesArray, &normalsArray);
        }
    } while(std::getline(file, line));

    file.close();

    verticesArray = std::vector<float>(vertices.size() * 3);

    int index = 0;
    for(glm::vec3 vec : vertices)
    {
        verticesArray[index++] = vec.x;
        verticesArray[index++] = vec.y;
        verticesArray[index++] = vec.z;
    }

    return g_loader->CreateRawModel(verticesArray, texturesArray, indices);
}

void ObjLoader::ProcessVertex(const std::vector<std::string> &verticesData,
                                    std::vector<int> &indices,
                              const std::vector<glm::vec2> &textures,
                              const std::vector<glm::vec3> &normals,
                                    std::vector<float> *texturesArray,
                                    std::vector<float> *normalsArray
                                    )
{
    int currentVertexPointer = std::stoi(verticesData[0]) - 1;
    indices.push_back(currentVertexPointer);
    glm::vec2 currentTex = textures[std::stoi(verticesData[1]) - 1];
    (*texturesArray)[currentVertexPointer * 2] = currentTex.x;
    (*texturesArray)[currentVertexPointer * 2 + 1] = 1.f - currentTex.y;
    glm::vec3 currentNormal = normals[std::stoi(verticesData[2]) - 1];
    (*normalsArray)[currentVertexPointer * 3] = currentNormal.x;
    (*normalsArray)[currentVertexPointer * 3 + 1] = currentNormal.y;
    (*normalsArray)[currentVertexPointer * 3 + 2] = currentNormal.z;
}