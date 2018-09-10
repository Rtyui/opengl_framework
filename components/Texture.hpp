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
protected:
    GLuint              m_textureId;
private:

// // // //
// Methods
// // // //
public:
                        Texture();
                        Texture(GLuint textureId);
                        ~Texture();
protected:
private:
};