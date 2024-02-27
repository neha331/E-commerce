import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Catlog_Screen.dart';
import 'package:flutter_application_1/screens/home/home_header.dart';

class HomeScreen extends StatelessWidget {
  //static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              //HomeHeader(),
              SizedBox(height: 20),

              CatalogScreen()//home_header.dart search_field.dart
            //   SizedBox(height: 20),
            //   DiscountBanner(),//discountbanner.dart and
              
              
            //    Categories(),// only categories.dart required
             
            //    SpecialOffers(),// special_offers->products_screen->section_title.dart
            //  // SizedBox(height: 200),
            //  // SizedBox(height: 50),
            //   //  PopularProducts(),
            //   //SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
