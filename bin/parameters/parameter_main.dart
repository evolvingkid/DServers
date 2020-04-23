import 'dart:io';
import '../model/parameters.dart';

class ParametersMain {
  controller(
      {HttpRequest request,
      List<Parameters> listOfParamets,
      Function onurlNotFound}) {
    double _loopOflist = 1;

    listOfParamets.forEach((f) {
      if (request.uri.path == f.parameters) {
        print('inside the url');
        f.onRequest(request);
        return;
      }

      if (_loopOflist == listOfParamets.length) {
        if (onurlNotFound != null) {
          onurlNotFound(request);
        } else {
          request.response
            ..write('404 Errro')
            ..close();
        }
      }
    });
  }
}
