find_package(nlohmann_json REQUIRED)

add_executable(nlohmann_json_test nlohmann_json_main.cpp)
target_link_libraries(nlohmann_json_test PRIVATE nlohmann_json::nlohmann_json)
