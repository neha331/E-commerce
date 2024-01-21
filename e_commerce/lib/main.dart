import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
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
      //on every page below colour DEBUG banner is appear we can disable it by changing it as false 
      debugShowCheckedModeBanner: false,
      // application title it will show on browser when you will run it on browser tab
      title: 'The Flutter application',
      theme: AppTheme.lightTheme(context),
      //Specifies the initial route of the app, in this case, SplashScreen.routeName. This is the first screen that will be displayed.
       initialRoute: HomeScreen.routeName,
      //SplashScreen.routeName,
      //This is likely a Map containing route names and their corresponding widgets. The routes variable should be defined elsewhere in the code.
       routes: routes,//routes variable from routes.dart
    );
  }
}
