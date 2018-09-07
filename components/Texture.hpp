#pragma once
#include <GL/glew.h>

class Texture
{
public:

    GLuint      m_textureId;

public:

                Texture();
                Texture(GLuint textureId);
                ~Texture();
};