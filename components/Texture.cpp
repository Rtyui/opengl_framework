/* Dynamic Includes */

/* Static includes */
#include "Texture.hpp"

Texture::Texture()
{
}

Texture::Texture(GLuint textureId) : m_textureId(textureId)
{
}

Texture::Texture(GLuint textureId, const float& shineDamper, const float& reflectivity) :
m_textureId(textureId),
m_shineDamper(shineDamper),
m_reflectivity(reflectivity)
{
}


Texture::~Texture()
{
}