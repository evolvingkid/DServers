import 'dart:io';
import 'dart:async';
import 'model/parameters.dart';
import 'parameters/parameter_main.dart';

class DServers with ParametersMain {
  Future<void> startServer(
      {dynamic ipAdress,
      int port,
      List<Parameters> parameters,
      Function onServerStart,
      Function onurlNotFound}) async {
    var server = await HttpServer.bind(ipAdress, port);

    // this is called when the onserver function called

    if (onServerStart != null) {
      onServerStart(server);
    }

    server.listen((HttpRequest req) {
      controller(
          request: req,
          listOfParamets: parameters,
          onurlNotFound: onurlNotFound);
    });
  }
}
