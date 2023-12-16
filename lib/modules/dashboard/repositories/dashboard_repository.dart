import 'package:app_barramento_api/infrastructure/http/app_dio.dart';
import 'package:dio/dio.dart';

class DashboardRepository {

  final String basePath = "http://www.google.com.br";

  Future<dynamic> getData() async {

     final Dio dioClient = await AppDio.getInstance();
     final String url = '$basePath';

     final Response<Map<String, dynamic>> response = await dioClient.get<Map<String, dynamic>>('${this.basePath}');

     //return dynamic.fromJson(); 
     return response;

  }

}