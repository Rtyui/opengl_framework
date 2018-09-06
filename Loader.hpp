#pragma once
#include <vector>
#include <GL/glew.h>
#include "RawModel.hpp"
#include <string>

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

                            ~Loader();

    RawModel*               CreateRawModel(const std::vector<float> &positions, const std::vector<float> &textureCoords, const std::vector<int> &indices);
    GLuint                  LoadTexture(const std::string &filename);
    static void             Instantiate();

private:

                            Loader();
    GLuint                  GetNewVaoId();
    void                    StoreDataInAttributeList(int attributeNumber, int coordinateSize, const std::vector<float> &data);
    void                    BindIndicesBuffer(const std::vector<int> &indices);

};

extern Loader*              g_loader;