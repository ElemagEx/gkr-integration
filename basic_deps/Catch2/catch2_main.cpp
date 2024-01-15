#include <catch2/catch_test_macros.hpp>
#include <catch2/catch_timer.hpp>

uint32_t factorial(uint32_t number)
{
    return (number <= 1)
        ? 1
        : factorial(number - 1) * number
        ;
}

TEST_CASE("catch2_build_test")
{
    Catch::Timer timer;
    timer.start();

    REQUIRE(factorial( 0) == 1);
    REQUIRE(factorial( 1) == 1);
    REQUIRE(factorial( 2) == 2);
    REQUIRE(factorial( 3) == 6);
    REQUIRE(factorial(10) == 3628800);

    auto ns = timer.getElapsedNanoseconds();

    CHECK(ns > 0);
}
