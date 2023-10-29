set(window_sources
    window.cpp
)

add_library(window ${window_sources})
configure_target_with_defaults(window)
target_link_libraries(window PUBLIC glfw glad_gl_core_46)
