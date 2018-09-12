#pragma once

/* Dynamic Includes */

/* Static Includes */
#include "System.hpp"

class FppCamera : public System
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
                                            FppCamera();
                                            ~FppCamera() override;

protected:
    void                                    ProcessComponent(Component *component) override;

private:
};