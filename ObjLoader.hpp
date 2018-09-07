#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <glm/glm.hpp>

#include "Mesh.hpp"

class ObjLoader
{
public:

    static void         Instantiate();
    Mesh*               LoadObjModel(const std::string &filename);

private:

    void                ProcessVertex(const std::vector<std::string> &verticesData,
                                            std::vector<int> &indices,
                                      const std::vector<glm::vec2> &textures,
                                      const std::vector<glm::vec3> &normals,
                                            std::vector<float> *texturesArray,
                                            std::vector<float> *normalsArray
                                            );
};

extern ObjLoader        *g_objLoader;