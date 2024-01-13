cmake_minimum_required(VERSION 3.22)

project(gkr-integration)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
set(CMAKE_VS_JUST_MY_CODE_DEBUGGING ON)
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

add_subdirectory(basic_deps)
add_subdirectory(imported_deps)
