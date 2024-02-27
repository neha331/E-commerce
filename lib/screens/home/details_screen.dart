import 'package:flutter/material.dart';
//import 'package:flutter_application_1/controllers/cart_controller.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
import 'package:flutter_application_1/models/product_model.dart';

import 'package:get/get.dart';
 // Make sure to import your Product model

class DetailsScreen extends StatelessWidget {
  final Product product;
  final CartController cartController = Get.put(CartController());
   DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.asset(product.images.first, fit: BoxFit.cover), // Display the first image
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(color: Colors.deepOrange, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text('Description:', style: Theme.of(context).textTheme.bodySmall),
                  Text(product.description),

                  ElevatedButton(
  onPressed: () {
    cartController.addToCart(product);
    Get.snackbar('Product Added', 'You have added ${product.title} to the cart!',
      snackPosition: SnackPosition.BOTTOM);
  },
  child: Text('Add to Cart'),
)
                  // Add more product details here as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
