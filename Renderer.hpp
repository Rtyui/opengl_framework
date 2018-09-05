#pragma once
#include "TexturedModel.hpp"

class Renderer
{
// Memebers


// Methods
private:
                    Renderer();

public:
                    ~Renderer();
    void            ClearWindow();
    void            Render(TexturedModel* texturedModel);
    static void     Instantiate();
};

extern Renderer*    g_renderer;