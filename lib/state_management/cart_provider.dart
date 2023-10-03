import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  void addToCart(Product product) {
    product.quantity = 1; // Set the initial quantity
    _products.add(product);
    notifyListeners();
  }

  int getTotalItems() {
    int totalItems = 0;
    for (Product product in _products) {
      totalItems += product.quantity;
    }
    return totalItems;
  }

  void removeFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  void changeQuantity(Product product, int newQuantity) {
    product.quantity = newQuantity;
    notifyListeners();
  }

  String calculateTotal() {
    double totalprice = 0;
    double shipping = 20.00; // Define your shipping cost here

    for (int i = 0; i < _products.length; i++) {
      totalprice += (_products[i].price! * _products[i].quantity);
    }

    // Add the shipping cost to the total price
    totalprice += shipping;

    return totalprice.toStringAsFixed(2);
  }

  String calculateTotalitem() {
    double totalprice = 0;
    // Define your shipping cost here

    for (int i = 0; i < _products.length; i++) {
      totalprice += (_products[i].price! * _products[i].quantity);
    }

    // Add the shipping cost to the total price

    return totalprice.toStringAsFixed(2);
  }
}
