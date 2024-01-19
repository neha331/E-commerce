import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //on every page beown colour DEBUG banner is appear we can disable it by changing it as false 
      debugShowCheckedModeBanner: true,
      // application title it will show on browser when you will run it on browser tab
      title: 'The Flutter Way - Template',
      theme: AppTheme.lightTheme(context),
      //Specifies the initial route of the app, in this case, SplashScreen.routeName. This is the first screen that will be displayed.
      initialRoute: SplashScreen.routeName,
      //This is likely a Map containing route names and their corresponding widgets. The routes variable should be defined elsewhere in the code.
      routes: routes,
    );
  }
}
