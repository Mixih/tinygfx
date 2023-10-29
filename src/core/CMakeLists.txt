set(core_srcs
    image.cpp
    scenegraph.cpp
)

add_library(core ${core_srcs})
configure_target_with_defaults(core)
