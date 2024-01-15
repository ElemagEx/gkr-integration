find_package(libdatachannel REQUIRED)

add_executable(ldc_build_test libdatachannel_main.cpp)
target_link_libraries(ldc_build_test PRIVATE LibDataChannel::LibDataChannel)

add_custom_command(
    TARGET ldc_build_test POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different "$<TARGET_FILE:LibDataChannel::LibDataChannel>" "$<TARGET_FILE_DIR:ldc_build_test>"
)
