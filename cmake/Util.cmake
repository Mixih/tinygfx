function(configure_target_with_defaults target)
    target_include_directories("${target}" PUBLIC ${PROJ_INCLUDE_DIR})
    target_compile_features("${target}" PUBLIC ${PROJ_CXX_VERSION})
    target_compile_options("${target}" PRIVATE ${PROJ_FLAGS})
endfunction()
