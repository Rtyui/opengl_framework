#include "Loader.hpp"
#include "Stdincl.hpp"
#include <iostream>

Loader *loader = NULL;

Loader::Loader()
{
    if(loader != NULL)
    {
        std::cerr << "Already created singleton for Loader. Duplicates not allowed" << std::endl;
    }
    vaos = std::vector<GLuint>();
    vbos = std::vector<GLuint>();
    loader = this;
}

Loader::~Loader()
{
    glDeleteVertexArrays(vaos.size(), vaos.data());
    glDeleteBuffers(vbos.size(), vbos.data());
}

RawModel* Loader::CreateRawModel(std::vector<float> positions)
{
    debug->Log("here is ok");
    GLuint vaoId = GetNewVaoId();
    debug->Log("here is ok");
    StoreDataInAttributeList(0, positions);
    debug->Log("here is ok");

    return new RawModel(vaoId, positions.size() / 3);
}

GLuint Loader::GetNewVaoId()
{
    GLuint vaoId;
    glGenVertexArrays(1, &vaoId);
    glBindVertexArray(vaoId);
    debug->Log("da");
    vaos.push_back(1);
    debug->Log("da");
    return vaoId;
}

void Loader::StoreDataInAttributeList(int attributeNumber, std::vector<float> data)
{
    GLuint vboId;
    glGenBuffers(1, &vboId);
    vbos.push_back(vboId);
    glBindBuffer(GL_ARRAY_BUFFER, vboId);
    glBufferData(GL_ARRAY_BUFFER, data.size(), data.data(), GL_STATIC_DRAW);
    glVertexAttribPointer(attributeNumber, 3, GL_FLOAT, GL_FALSE, 0, 0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}
