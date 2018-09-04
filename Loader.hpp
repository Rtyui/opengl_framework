#pragma once
#include <vector>
#include <GL/glew.h>
#include "RawModel.hpp"

class Loader
{
// Members
public:


private:

    std::vector<GLuint>     vaos;
    std::vector<GLuint>     vbos;



// Methods
public:

    Loader();
    ~Loader();

    RawModel*               CreateRawModel(std::vector<float> positions);

private:

    GLuint                  GetNewVaoId();
    void                    StoreDataInAttributeList(int attributeNumber, std::vector<float> data);

};

extern Loader *loader;