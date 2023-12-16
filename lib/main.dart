import 'package:app_barramento_api/modules/dashboard/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api barramento',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboarPage(title: 'Barramento'),
    );
  }
}
