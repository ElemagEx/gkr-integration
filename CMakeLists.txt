cmake_minimum_required(VERSION 3.22)

project(gkr-basics)

set(CMAKE_CXX_STANDARD 17)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
set(CMAKE_VS_JUST_MY_CODE_DEBUGGING ON)
endif()

add_subdirectory(basic_deps)
add_subdirectory(imported_deps)

