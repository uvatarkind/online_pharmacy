import 'package:flutter/material.dart';
import 'package:online_pharmacy/provider/wish_list_provider.dart';
import 'package:provider/provider.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Wish List'),
      ),
      body: wishListProvider.wishListItems.isEmpty
          ? Center(child: Text('Your wish list is empty'))
          : ListView.builder(
              itemCount: wishListProvider.wishListItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset(
                          wishListProvider.wishListItems[index].img),
                      title: Text(wishListProvider.wishListItems[index].title),
                      subtitle: Text(
                          wishListProvider.wishListItems[index].description),
                      trailing: Text(
                          '${wishListProvider.wishListItems[index].price.toStringAsFixed(2)} Birr'),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
