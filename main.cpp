#include <SFML/System.hpp>
#include <SFML/Window.hpp>

int main()
{
    bool running = true;

    sf::ContextSettings settings;
    settings.depthBits = 24;
    settings.stencilBits = 8;
    settings.antialiasingLevel = 2; // Optional
    // Request OpenGL version 3.2 (optional but recommended)
    settings.majorVersion = 3;
    settings.minorVersion = 2;
    settings.attributeFlags = sf::ContextSettings::Core;

    sf::Window window(sf::VideoMode(800, 600), "OpenGL", sf::Style::Close, settings);

    sf::Event windowEvent;
    while(running)
    {
        while(window.pollEvent(windowEvent))
        {
            switch(windowEvent.type)
            {
            case sf::Event::Closed:
                running = false;
                break;
            case sf::Event::KeyPressed:
                if(windowEvent.key.code == sf::Keyboard::Escape)
                {
                    running = false;
                }
                break;
            }
        }

        window.display();
    }
    return 0;
}