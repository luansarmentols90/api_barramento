
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

mixin AppDio on Dio {
  static Future<Dio> getInstance(
      {bool useToken = false,
      bool sendElectronicSignature = false,
      int? customSendTimeout,
      int? customReceiveTimeout}) async {
    
    final Dio dio = Dio();
    final Map<String, String> headers = Map<String, String>();
    //headers['Authorization'] = 'Basic ' + AppCredentials.getEncodedCredentials();
    //headers['api-key'] = 'xxx';

    if (useToken) {
      //headers['Authorization'] = 'Bearer ' + auth['value'];
    }

    dio.options = BaseOptions();
    dio.options.receiveTimeout = customReceiveTimeout ?? 30000;
    dio.options.sendTimeout = customSendTimeout ?? 15000;

    dio.options.headers = headers;

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    return dio;
  }

  static void onRequest(RequestOptions options) {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
  }

  static void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  static Future<dynamic> onError(
      Dio dio, DioError error, ErrorInterceptorHandler handler) async {
    
    if (error.response?.statusCode == 401) {
      handler.reject(error);
    }
  }
}
