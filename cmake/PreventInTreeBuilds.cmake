# incspired by the error message printed by the neovim project when this occurs
function(prevent_in_tree_builds)
    get_filename_component(srcdir "${CMAKE_SOURCE_DIR}" REALPATH)
    get_filename_component(bindir "${CMAKE_BINARY_DIR}" REALPATH)
    # fail builds that would dump build outputs in-tree
    if ("${srcdir}" STREQUAL "${bindir}")
        message("")
        message("###############################################################")
        message("This project does not support in-tree builts. It is recommended")
        message("that a build/ directory is used for build output:")
        message("    mkdir build")
        message("    cd build")
        message("    cmake <options> ..")
        message("Make sure to cleanup some CMake artifacts from this failed build")
        message("with:")
        message("    rm -rf CMakeFiles CMakeCache.txt")
        message("###############################################################")
        message("")
        message(FATAL_ERROR "Stopping build.")
    endif()
endfunction()

prevent_in_tree_builds()
