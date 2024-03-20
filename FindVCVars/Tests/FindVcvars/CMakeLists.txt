if(MSVC)

  if(CMAKE_SIZEOF_VOID_P EQUAL 4)
    set(current_arch 32)
  else()
    set(current_arch 64)
  endif()

  #
  # Config mode
  #

  # Find msvc version matching generator
  set(FindVcvars.config_BUILD_OPTIONS
    -DEXPECTED_MSVC_ARCH:STRING=${current_arch}
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    )
  ADD_TEST_MACRO(FindVcvars.config)

  # Override bitness 32-bit
  set(FindVcvars.config.specific_32_BUILD_OPTIONS
    -DVcvars_MSVC_ARCH:STRING=32
    -DEXPECTED_MSVC_ARCH:STRING=32
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    )
  ADD_TEST_MACRO(FindVcvars.config.specific_32)

  # Override bitness 64-bit
  set(FindVcvars.config.specific_64_BUILD_OPTIONS
    -DVcvars_MSVC_ARCH:STRING=64
    -DEXPECTED_MSVC_ARCH:STRING=64
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    )
  ADD_TEST_MACRO(FindVcvars.config.specific_64)

  #
  # Script mode
  #

  # Find any msvc version
  add_test(NAME FindVcvars.script.any COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DEXPECTED_MSVC_ARCH:STRING=${current_arch}
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )
  # Find any 32-bit msvc version
  add_test(NAME FindVcvars.script.any_32 COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DVcvars_MSVC_ARCH:STRING=32
    -DEXPECTED_MSVC_ARCH:STRING=32
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )
  # Find any 64-bit msvc version
  add_test(NAME FindVcvars.script.any_64 COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DVcvars_MSVC_ARCH:STRING=64
    -DEXPECTED_MSVC_ARCH:STRING=64
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )
  # Find a specific msvc version
  add_test(NAME FindVcvars.script.specific COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DVcvars_MSVC_VERSION:STRING=${MSVC_VERSION}
    -DEXPECTED_MSVC_ARCH:STRING=${current_arch}
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )
  # Find a specific 32-bit msvc version
  add_test(NAME FindVcvars.script.specific_32 COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DVcvars_MSVC_ARCH:STRING=32
    -DVcvars_MSVC_VERSION:STRING=${MSVC_VERSION}
    -DEXPECTED_MSVC_ARCH:STRING=32
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )
  # Find a specific 64-bit msvc version
  add_test(NAME FindVcvars.script.specific_64 COMMAND ${CMAKE_CMAKE_COMMAND}
    -P ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/test.cmake
    -DVcvars_MSVC_ARCH:STRING=64
    -DVcvars_MSVC_VERSION:STRING=${MSVC_VERSION}
    -DEXPECTED_MSVC_ARCH:STRING=64
    -DEXPECTED_MSVC_VERSION:STRING=${MSVC_VERSION}
    WORKING_DIRECTORY ${CMake_SOURCE_DIR}/Tests/FindVcvars/script/
    )

endif()