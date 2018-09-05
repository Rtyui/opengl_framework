#pragma once
#include "RawModel.hpp"
#include "Texture.hpp"

class TexturedModel
{
public:

    RawModel*            m_rawModel;
    Texture*             m_texture;

public:

                        TexturedModel();
                        TexturedModel(RawModel* rawModel, Texture* texture);
                        ~TexturedModel();
};