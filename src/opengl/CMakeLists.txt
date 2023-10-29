set(opengl_srcs
    glshader.cpp
)

add_library(opengl ${opengl_srcs})
configure_target_with_defaults(opengl)
target_link_libraries(opengl glad_gl_core_46 glm)
