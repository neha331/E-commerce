import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/home/cart_Screen.dart';
import 'package:flutter_application_1/screens/home/categories.dart';
import 'package:flutter_application_1/screens/home/discount_banner.dart';
import 'package:flutter_application_1/screens/home/home_header.dart';
import 'package:flutter_application_1/screens/home/special_offer.dart';
//import 'package:flutter_application_1/widgets/catalog_producs.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 128, 0, 1),
        title: const Text(
          'Catlog',
          style: TextStyle(color:Colors.black),
        )
      ),
      body: SafeArea(child: Column(
        children: [
          const HomeHeader(),
          const DiscountBanner(),
          const Categories(),
          const SpecialOffers(),

          ElevatedButton(onPressed: () => Get.to(()=> CartPage()),
           child: const Text('Go to cart'))
          
        ],
      ))
    );
   
  }
  
}