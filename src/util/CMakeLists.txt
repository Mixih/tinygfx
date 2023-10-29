set(util_srcs
    dummy.cpp
)

add_library(util ${util_srcs})
configure_target_with_defaults(util)
