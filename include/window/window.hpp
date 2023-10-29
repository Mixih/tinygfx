#ifndef WINDOW_HPP_
#define WINDOW_HPP_

#include <cstddef>

#include "gl_inc.h"

class Window {
private:
    std::size_t width;
    std::size_t height;

public:
    Window(std::size_t width, std::size_t height);
    virtual void display();
};

class GlWindow : public Window {
private:
    GLFWwindow* window;

public:
    GlWindow(std::size_t width, std::size_t height);
    virtual void display() override;
};

// Inlined functions for speed
inline Window::Window(std::size_t width, std::size_t height)
    : width{width}, height{height} {
}
inline GlWindow::GlWindow(std::size_t width, std::size_t height)
    : Window(width, height), window{nullptr} {
}

#endif /* WINDOW_HPP_ */
