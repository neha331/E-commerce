import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
//import 'package:flutter_application_1/controllers/cart_controller.dart';
import 'package:get/get.dart';
 // Import your CartController

class CartPage extends StatelessWidget {
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: cartController.cartItems.length,
            itemBuilder: (context, index) {
              final product = cartController.cartItems[index];
              return ListTile(
                title: Text(product.title),
                trailing: Text('\$${product.price}'),
                // Implement remove from cart functionality if needed
                // onTap: () => cartController.removeFromCart(product),
              );
            },
          )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Obx(() => Text(
                    '\$${cartController.totalPrice}',
                    style: TextStyle(fontSize: 22, color: Colors.red),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
