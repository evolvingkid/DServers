library dservers;

import 'dart:io';

import 'package:dservers/configs/servers.dart';

class Dserver extends Servers {
  @override
  Future<void> setupServers({
    dynamic? ipAdress,
    required int port,
    Function(HttpServer)? onServerStart,
    required Function onurlNotFount,
  }) async {
    //  if user didnt give any ip address then we will give it a default one of the system
    if (ipAdress == null) {
      ipAdress = InternetAddress.loopbackIPv4;
    }

// * starting of the servers
    HttpServer _servers = await HttpServer.bind(ipAdress, port);

// for the on servers function
    if (onServerStart != null) {
      onServerStart(_servers);
    }

    _servers.listen((event) {});
  }
}
