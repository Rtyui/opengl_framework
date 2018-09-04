#pragma once
#include "RawModel.hpp"

class Renderer
{
// Memebers


// Methods
public:
            Renderer();
            ~Renderer();
            void ClearWindow();
            void Render(RawModel *rawModel);
};

extern Renderer *renderer;