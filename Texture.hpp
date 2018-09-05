#pragma once
#include <GL/glew.h>

class Texture
{
private:

    GLuint      m_textureId;

public:

                Texture();
                Texture(GLuint textureId);
                ~Texture();
};