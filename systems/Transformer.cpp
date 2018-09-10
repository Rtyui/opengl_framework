/* Dynamic Includes */

/* Static Includes */
#include "Transformer.hpp"
#include "Transform.hpp"

Transformer::Transformer()
{
    m_systems.insert(std::pair<std::string, System*>("Transformer", this));
}

Transformer::~Transformer()
{
}

void Transformer::ProcessComponent(Component *component)
{
    Transform *transform = CheckComponentType<Transform>(component);
    transform->rotation().y += .001f;
    transform->UpdateMatrix();
}