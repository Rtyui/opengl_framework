#pragma once

/* Dynamic Includes */
#include <SFML/System.hpp>
#include <SFML/Window.hpp>

/* Static Includes */

class App
{
// // // //
// Members
// // // //
public:

    static constexpr int            WINDOW_WIDTH = 800;
    static constexpr int            WINDOW_HEIGHT = 600;

protected:
private:
    sf::Window*                     m_window;
    bool                            m_running;
    sf::Event                       m_event;

// // // //
// Methods
// // // //
public:
                                    App();
                                    ~App();
    void                            Run();
protected:
private:
    void                            CreateWindow();
    void                            InstantiateSingletons();
    void                            DeleteSingletons();
    void                            InitializeOpenGL();
};