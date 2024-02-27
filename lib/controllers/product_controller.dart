import 'package:flutter_application_1/models/product_model.dart';
import 'package:get/get.dart';


class CartController extends GetxController {
  var cartItems = <Product>[].obs; // Observable list of cart items

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
}
