#pragma once

/* Dynamic Includes */
#include <GL/glew.h>

/* Static includes */

class Texture
{
// // // //
// Members
// // // //
public:
    const GLuint&       textureId() const { return m_textureId; }
    const float&        shineDamper() const {return m_shineDamper; }
    const float&        reflectivity() const {return m_reflectivity; }
protected:
    GLuint              m_textureId;
private:
    float               m_shineDamper;
    float               m_reflectivity;

// // // //
// Methods
// // // //
public:
                        Texture();
                        Texture(GLuint textureId);
                        Texture(GLuint textureId, const float& shineDamper, const float& reflectivity);
                        ~Texture();
protected:
private:
};