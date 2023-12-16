import 'package:app_barramento_api/modules/dashboard/services/dashboard_service.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardController with _$DashboardController;

abstract class _DashboardController with Store {

  final DashboardService _dashboardService = DashboardService();
  
  @observable
  bool isLoading = false;

  @observable
  dynamic model;

  @action
  Future<dynamic> getDataApi() async {

    try{
    
      this.isLoading = true;
      this.model = await _dashboardService.getData();
      this.isLoading = false;
    
    }catch(e){
      
      print(e);
      this.isLoading = false; 

    }

  }

}