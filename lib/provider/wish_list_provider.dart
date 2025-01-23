import 'package:flutter/material.dart';
import 'package:online_pharmacy/model/item.dart';

class WishListProvider with ChangeNotifier {
  final List<Item> _wishListItems = [];

  List<Item> get wishListItems => List.unmodifiable(_wishListItems);

  void addItem(Item item) {
    _wishListItems.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _wishListItems.remove(item);
    notifyListeners();
  }

  void clearWishList() {
    _wishListItems.clear();
    notifyListeners();
  }

  int get itemCount => _wishListItems.length;
}