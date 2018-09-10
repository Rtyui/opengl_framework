#pragma once

/* Dynamic Includes */

/* Static Includes */
#include "System.hpp"

class Transformer : public System
{
// // // //
// Members
// // // //
public:
protected:
private:

// // // //
// Methods
// // // //
public:
                            Transformer();
                            ~Transformer() override;
protected:
void                    ProcessComponent(Component *component) override;
private:
};