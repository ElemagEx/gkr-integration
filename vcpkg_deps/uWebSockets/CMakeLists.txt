cmake_minimum_required(VERSION 3.22)

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/../vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "vcpkg toolchain file")

project(uWebSockets-vcpkg-integration)

set(CMAKE_CXX_STANDARD 17)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
set(CMAKE_VS_JUST_MY_CODE_DEBUGGING ON)
endif()

find_path(UWEBSOCKETS_INCLUDE_DIRS "uwebsockets/App.h")

if(CMAKE_BUILD_TYPE STREQUAL Debug)
    get_filename_component(UWEBSOCKETS_LIBRARY_DIRS ${UWEBSOCKETS_INCLUDE_DIRS}/"../../../debug/lib" ABSOLUTE)
else()
    get_filename_component(UWEBSOCKETS_LIBRARY_DIRS ${UWEBSOCKETS_INCLUDE_DIRS}/"../../../lib" ABSOLUTE)
endif()
if(UNIX)
    string(REPLACE "\"" "" UWEBSOCKETS_LIBRARY_DIRS ${UWEBSOCKETS_LIBRARY_DIRS})
    set(UWEBSOCKETS_LINK_LIBRARIES uSockets uv z) #crypto ssl
elseif(CMAKE_BUILD_TYPE STREQUAL Debug)
    set(UWEBSOCKETS_LINK_LIBRARIES uSockets uv zlibd) #libcrypto libssl
else()
    set(UWEBSOCKETS_LINK_LIBRARIES uSockets uv zlib) #libcrypto libssl
endif()

add_library(uWebSockets INTERFACE)
target_include_directories(uWebSockets INTERFACE ${UWEBSOCKETS_INCLUDE_DIRS})
target_link_directories(uWebSockets INTERFACE ${UWEBSOCKETS_LIBRARY_DIRS})
target_link_libraries(uWebSockets INTERFACE ${UWEBSOCKETS_LINK_LIBRARIES})

message(STATUS "uWebSockets include dir: ${UWEBSOCKETS_INCLUDE_DIRS}")
message(STATUS "uWebSockets library dir: ${UWEBSOCKETS_LIBRARY_DIRS}")
message(STATUS "uWebSockets link libs  : ${UWEBSOCKETS_LINK_LIBRARIES}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

add_executable(uws_test main.cpp)
target_link_libraries(uws_test uWebSockets)
