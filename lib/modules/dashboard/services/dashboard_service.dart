import 'package:app_barramento_api/modules/dashboard/repositories/dashboard_repository.dart';

class DashboardService {

  final DashboardRepository _dashboardRepository = new DashboardRepository();

  Future<dynamic> getData() async {

    try{
      return await _dashboardRepository.getData();
    }catch(e){
      rethrow;
    }

  }

}