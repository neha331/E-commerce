import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Catlog_Screen.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: CatalogScreen(),
    );
  }
}

