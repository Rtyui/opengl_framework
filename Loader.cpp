#include "Loader.hpp"
#include "Debug.hpp"
#include <iostream>
#include <SFML/Graphics/Image.hpp>

Loader* g_loader = NULL;

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

Mesh* Loader::CreateRawModel(const std::vector<float> &positions, const std::vector<float> &textureCoords, const std::vector<int> &indices)
{
    GLuint vaoId = GetNewVaoId();
    BindIndicesBuffer(indices);
    StoreDataInAttributeList(0, 3, positions);
    StoreDataInAttributeList(1, 2, textureCoords);
    glBindVertexArray(0);
    return new Mesh(vaoId, indices.size());
}

GLuint Loader::LoadTexture(const std::string &filename)
{
    sf::Image loadedImage;
    if(!loadedImage.loadFromFile(filename))
    {
        elog(E, "Could not load image '%s'", filename);
        exit(0);
    }

    loadedImage.saveToFile("caca.png");

    elog(I, "%d", loadedImage.getSize().x);

    GLuint textureId;
    glGenTextures(1, &textureId);
    m_textures.push_back(textureId);
    glBindTexture(GL_TEXTURE_2D, textureId);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, loadedImage.getSize().x, loadedImage.getSize().y, 0, GL_RGBA, GL_UNSIGNED_BYTE, loadedImage.getPixelsPtr());

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    return textureId;
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

void Loader::Instantiate()
{
    if(g_loader != NULL)
    {
        std::cerr << "Double instantiation not allowed" << std::endl;
    }
    g_loader = new Loader();
}
