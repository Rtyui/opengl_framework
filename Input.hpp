#pragma once

/* Dynamic Includes */
#include <SFML/Window.hpp>

/* Static Includes */

class Input
{
// // // //
// Members
// // // //
public:
protected:
private:
    std::vector<bool>           m_currentState;
    std::vector<bool>           m_lastState;

// // // //
// Methods
// // // //
public:
    static void                 Instantiate();
                                ~Input();
    void                        Update();
    bool                        IsPressed(sf::Keyboard::Key key);
    bool                        IsJustPressed(sf::Keyboard::Key key);
    bool                        IsJustReleased(sf::Keyboard::Key key);
protected:
private:
                                Input();
};

extern Input *g_input;