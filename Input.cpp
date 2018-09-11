/* Dynamic Includes */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Static Includes */
#include "Input.hpp"
#include "Debug.hpp"

Input* g_input = NULL;

void Input::Instantiate()
{
    if(g_input != NULL)
    {
        elog(E, "Double instantiation not allowed!");
        exit(0);
    }
    g_input = new Input();
}

Input::Input()
{
    m_currentState = std::vector<bool>(sf::Keyboard::KeyCount, false);
    m_lastState = std::vector<bool>(sf::Keyboard::KeyCount, false);
}

Input::~Input()
{
}

void Input::Update()
{
    m_lastState.swap(m_currentState);
    for(unsigned i = 0; i < m_currentState.size(); ++i)
    {
        m_currentState[i] = sf::Keyboard::isKeyPressed(((sf::Keyboard::Key) i));
    }
}

bool Input::IsPressed(sf::Keyboard::Key key)
{
    return m_currentState[key];
}

bool Input::IsJustPressed(sf::Keyboard::Key key)
{
    return (m_currentState[key] && !m_lastState[key]);
}

bool Input::IsJustReleased(sf::Keyboard::Key key)
{
    return (!m_currentState[key] && m_lastState[key]);
}