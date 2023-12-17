// ignore_for_file: unnecessary_this, avoid_print, library_private_types_in_public_api

import 'package:app_barramento_api/modules/dashboard/models/responses/arts_model_response.dart';
import 'package:app_barramento_api/modules/dashboard/services/dashboard_service.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardController with _$DashboardController;

abstract class _DashboardController with Store {

  final DashboardService _dashboardService = DashboardService();
  
  @observable
  bool isLoading = false;

  @observable
  bool isError = false;

  @observable
  bool isLoadingLeading = false;

  @observable
  List<Art>? modelArts = <Art>[];

  @observable
  dynamic modelDistance;

  @observable
  bool isApiOnline = false;

  @action
  Future<dynamic> getArtsDataApi() async {

    try{
      this.isError = false;
      this.isLoading = true;
      this.modelArts = await _dashboardService.getArtsData();
      this.isLoading = false;
    
    }catch(e){
      this.isError = true;
      print(e);
      this.isLoading = false; 

    }

  }

  @action
  Future<dynamic> getDistanceDataApi() async {

    try{
    
      this.isLoading = true;
      this.modelArts = await _dashboardService.getDistanceDataApi();
      this.isLoading = false;
    
    }catch(e){
      
      print(e);
      this.isLoading = false; 

    }

  }

  @action
  Future<void> isApiOn() async {

    try{
      this.isLoadingLeading = true;
      this.isApiOnline = await this._dashboardService.isApiOn();
      this.isLoadingLeading = false;
    }catch(e){
     this.isApiOnline = false;
     this.isLoadingLeading = false;
    }

  }

}