import 'package:flutter/material.dart';

import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              HomeHeader(),//home_header.dart search_field.dart
              SizedBox(height: 20),
              DiscountBanner(),//discountbanner.dart and
              
              
               Categories(),// only categories.dart required
             
               SpecialOffers(),// special_offers->products_screen->section_title.dart
             // SizedBox(height: 200),
             // SizedBox(height: 50),
              //  PopularProducts(),
              //SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
