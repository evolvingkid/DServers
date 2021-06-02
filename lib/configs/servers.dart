import 'dart:io';

abstract class Servers {
// * function for starting the servers
  Future<void> setupServers({
    required dynamic ipAdress,
    required int port,
    Function(HttpServer)? onServerStart,
    required Function onurlNotFount,
  });
}
