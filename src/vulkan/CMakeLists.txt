set(vulkan_srcs
    vkshader.cpp
)

add_library(vulkan ${vulkan_srcs})
configure_target_with_defaults(vulkan)
