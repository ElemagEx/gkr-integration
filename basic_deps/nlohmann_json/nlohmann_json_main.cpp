#include <fstream>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

int main()
{
    const char* ex2 = R"(
{
    "pi": 3.141,
    "happy": true
}
    )";
    json ex1 = json::parse(ex2);
    return 0;
}
