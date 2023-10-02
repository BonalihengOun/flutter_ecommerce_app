import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  void addToCart(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  double get totalPrice {
    double totalPrice = 0;
    for (Product product in products) {
      totalPrice += (product.price! * product.quantity);
    }
    return totalPrice;
  }
  void changeQuantity(Product product, int newQuantity) {
    product.quantity = newQuantity;
    notifyListeners();
  }
}
