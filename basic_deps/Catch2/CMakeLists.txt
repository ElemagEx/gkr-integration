cmake_minimum_required(VERSION 3.22)

project(Catch2-basic-integration)

set(CMAKE_CXX_STANDARD 17)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
set(CMAKE_VS_JUST_MY_CODE_DEBUGGING ON)
endif()

enable_testing()
find_package(Catch2 REQUIRED)
include(Catch)

add_executable(catch_build_test main.cpp)
target_link_libraries(catch_build_test PRIVATE Catch2::Catch2WithMain)
catch_discover_tests(catch_build_test)
