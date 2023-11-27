#include <uwebsockets/App.h>

int main()
{
    uWS::SSLApp().get("/*", [](auto *res, auto *) {
        res->end("Hello world!");
    }).listen(3000, [](auto *listen_socket) {
        if (listen_socket) {
            std::cout << "Listening on port " << 3000 << std::endl;
        }
    }).run();
}
