import 'package:app_barramento_api/modules/dashboard/models/responses/arts_model_response.dart';
import 'package:app_barramento_api/modules/dashboard/repositories/dashboard_repository.dart';

class DashboardService {

  final DashboardRepository _dashboardRepository = new DashboardRepository();

  Future<List<Art>?> getArtsData() async {

    try{
      ArtsModelResponse artsModelResponse = await _dashboardRepository.getDataArts();
      return artsModelResponse.arts;
    }catch(e){
      rethrow;
    }

  }

  Future<dynamic> getDistanceDataApi() async {

    try{
      return await _dashboardRepository.getDataDistance();
    }catch(e){
      rethrow;
    }

  }

  Future<bool> isApiOn() async {

    try{
      return await _dashboardRepository.isOnApi();
    }catch(e){
      return false;
    }

  }

}