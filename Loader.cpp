/* Dynamic Includes */
#include <iostream>
#include <SFML/Graphics/Image.hpp>
#include <fstream>
#include <iterator>

/* Static Includes */
#include "Loader.hpp"
#include "Debug.hpp"
#include "Utilities.hpp"

Loader::Loader()
{
    m_vaos = std::vector<GLuint>();
    m_vbos = std::vector<GLuint>();
}

Loader::~Loader()
{
    glDeleteVertexArrays(m_vaos.size(), m_vaos.data());
    glDeleteBuffers(m_vbos.size(), m_vbos.data());
    glDeleteTextures(m_textures.size(), m_textures.data());
}

Mesh* Loader::GetMesh(const std::vector<float> &positions, const std::vector<float> &textureCoords, const std::vector<int> &indices)
{
    GLuint vaoId = GetNewVaoId();
    BindIndicesBuffer(indices);
    StoreDataInAttributeList(0, 3, positions);
    StoreDataInAttributeList(1, 2, textureCoords);
    glBindVertexArray(0);
    return new Mesh(vaoId, indices.size());
}

Texture* Loader::LoadTexture(const std::string &filename)
{
    sf::Image loadedImage;
    if(!loadedImage.loadFromFile(filename))
    {
        elog(E, "Could not load image '%s'", filename);
        exit(0);
    }

    GLuint textureId;
    glGenTextures(1, &textureId);
    m_textures.push_back(textureId);
    glBindTexture(GL_TEXTURE_2D, textureId);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, loadedImage.getSize().x, loadedImage.getSize().y, 0, GL_RGBA, GL_UNSIGNED_BYTE, loadedImage.getPixelsPtr());

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    return new Texture(textureId);
}

GLuint Loader::GetNewVaoId()
{
    GLuint vaoId;
    glGenVertexArrays(1, &vaoId);
    m_vaos.push_back(vaoId);
    glBindVertexArray(vaoId);
    return vaoId;
}

void Loader::StoreDataInAttributeList(int attributeNumber, int coordinateSize, const std::vector<float> &data)
{
    GLuint vboId;
    glGenBuffers(1, &vboId);
    m_vbos.push_back(vboId);
    glBindBuffer(GL_ARRAY_BUFFER, vboId);
    glBufferData(GL_ARRAY_BUFFER, data.size() * sizeof(float), &data[0], GL_STATIC_DRAW);
    glVertexAttribPointer(attributeNumber, coordinateSize, GL_FLOAT, GL_FALSE, 0, 0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void Loader::BindIndicesBuffer(const std::vector<int> &indices)
{
    GLuint eboId;
    glGenBuffers(1, &eboId);
    m_vbos.push_back(eboId);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, eboId);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(int), &indices[0], GL_STATIC_DRAW);
}

Mesh* Loader::LoadObjModel(const std::string &filename)
{
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

    return GetMesh(verticesArray, texturesArray, indices);
}

void Loader::ProcessVertex(const std::vector<std::string> &verticesData,
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
