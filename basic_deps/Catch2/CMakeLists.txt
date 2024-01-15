enable_testing()
find_package(Catch2 REQUIRED)
include(Catch)
set(CMAKE_CATCH_DISCOVER_TESTS_DISCOVERY_MODE PRE_TEST) #Just optimization - not needed (good for cross-compile)

add_executable(catch_build_test catch2_main.cpp)
target_link_libraries(catch_build_test PRIVATE Catch2::Catch2WithMain)
catch_discover_tests(catch_build_test)
