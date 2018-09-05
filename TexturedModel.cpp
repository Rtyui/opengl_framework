#include "TexturedModel.hpp"

TexturedModel::TexturedModel()
{
}

TexturedModel::TexturedModel(RawModel* rawModel, Texture* texture)
{
    m_rawModel = rawModel;
    m_texture = texture;
}

TexturedModel::~TexturedModel()
{
}
