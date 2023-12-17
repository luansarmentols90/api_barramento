import 'package:app_barramento_api/infrastructure/http/app_dio.dart';
import 'package:app_barramento_api/modules/dashboard/models/responses/arts_model_response.dart';
import 'package:app_barramento_api/modules/dashboard/models/responses/distance_model_response.dart';
import 'package:app_barramento_api/modules/dashboard/models/responses/live_api.dart';
import 'package:dio/dio.dart';

class DashboardRepository {

  final String basePath = "http://ec2-54-237-217-30.compute-1.amazonaws.com:8080/";

  Future<bool> isOnApi() async {

    final Dio dioClient = await AppDio.getInstance();

    try{
      final Response response = await dioClient.get('${this.basePath}/live');
      LiveApiResponse liveApiResponse = LiveApiResponse.fromJson(response.data);
      return liveApiResponse.message == 'Is alive';
    }catch(e){
      return false;
    }
     
  }

  Future<ArtsModelResponse> getDataArts() async {

     final Dio dioClient = await AppDio.getInstance();
     final Response response = await dioClient.get('${this.basePath}/arts');

     return ArtsModelResponse.fromJson(response.data);
  }

  Future<DistanceModelResponse> getDataDistance() async {

     final Dio dioClient = await AppDio.getInstance();
    
     final Response response = await dioClient.get('${this.basePath}/distance');
     return DistanceModelResponse.fromJson(response.data);


  }

}