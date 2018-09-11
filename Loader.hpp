#pragma once

/* Dynamic Includes */
#include <vector>
#include <GL/glew.h>
#include <string>
#include <glm/glm.hpp>

/* Static Includes */
#include "Mesh.hpp"
#include "Texture.hpp"

class Loader
{
// Members
public:


private:

    std::vector<GLuint>     m_vaos;
    std::vector<GLuint>     m_vbos;
    std::vector<GLuint>     m_textures;



// Methods
public:

                            Loader();
                            ~Loader();

    Mesh*                   GetMesh(const std::vector<float> &positions, const std::vector<float> &textureCoords, const std::vector<int> &indices);
    Texture*                LoadTexture(const std::string &filename);
    Mesh*                   LoadObjModel(const std::string &filename);

private:

    GLuint                  GetNewVaoId();
    void                    StoreDataInAttributeList(int attributeNumber, int coordinateSize, const std::vector<float> &data);
    void                    BindIndicesBuffer(const std::vector<int> &indices);
    void                    ProcessVertex(const std::vector<std::string> &verticesData,
                                                std::vector<int> &indices,
                                          const std::vector<glm::vec2> &textures,
                                          const std::vector<glm::vec3> &normals,
                                                std::vector<float> *texturesArray,
                                                std::vector<float> *normalsArray
                                                );
};