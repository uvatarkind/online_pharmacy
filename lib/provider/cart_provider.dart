import 'package:flutter/material.dart';
import 'package:online_pharmacy/model/item.dart';

class CartProvider with ChangeNotifier {
  final List<Item> _cartItems = [];

  List<Item> get cartItems => List.unmodifiable(_cartItems);

  void addItem(Item item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  int get itemCount => _cartItems.length;

  double get totalPrice {
    // Assuming each item has a fixed price for simplicity
    const double itemPrice = 10.0;
    return _cartItems.length * itemPrice;
  }
}