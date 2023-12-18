// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_barramento_api/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:app_barramento_api/modules/dashboard/models/responses/arts_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.title});

  final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  
  DashboardController dashboardController = DashboardController();

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    await dashboardController.isApiOn();
    await dashboardController.getArtsDataApi();
    await dashboardController.getDistanceDataApi();
  }

  _buildLeading() {
    return Observer(builder: (_) =>
      this.dashboardController.isLoadingLeading
      ? Center(
          child: Container(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(color: Colors.yellow, strokeWidth: 0.9,)
          )
        )
      : Center(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: this.dashboardController.isApiOnline ? Colors.greenAccent : Colors.red),
            ),
            Container(
                margin: EdgeInsets.only(left: 3),
                child: Text(this.dashboardController.isApiOnline ? 'api on!' : 'api off!' , style: TextStyle(fontSize: 10))),
          ],
        ),
      )
    );
  }

  List<Widget> _buildBodyArts(List<Art>? arts){

    List<Widget> list = <Widget>[];

    arts!.forEach((art) {
      Widget widget = Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text('Número ART: ${art.numeroArt ?? 'Sem número'}')),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text('Empresa: ${art.empresa ?? 'Sem registro'}')),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text('Logradouro: ${art.logradouro1 ?? 'Sem registro'}')),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text('Profissional: ${art.profissional ?? 'Sem registro do profissional'}')),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text('Distância: ${this.dashboardController.distanceObj!.distanceText!.s0 ?? 'Sem distância registrada'}')),
              ],
            ),
          ],
        ),
      );

      list.add(widget);

    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          leading: _buildLeading()),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Observer(builder: (_) =>
            this.dashboardController.isLoading
            ? Center(child: CircularProgressIndicator())
            : this.dashboardController.isError
              ? Center(child: Text('Erro ao carregar informações!'))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: _buildBodyArts(this.dashboardController.modelArts)
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _loadData(),
        tooltip: 'Increment',
        child: const Icon(Icons.data_object),
      ),
    );
  }
}
