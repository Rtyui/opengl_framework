#pragma once

#include <iostream>
#include "RawModel.hpp"

class ObjLoader
{
public:

    static void         Instantiate();
    RawModel*           LoadObjModel(const std::string &filename);
};

extern ObjLoader        *g_objLoader;