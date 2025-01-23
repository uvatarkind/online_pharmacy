import 'package:flutter/material.dart';
import 'package:online_pharmacy/components/custumbutton.dart';
import 'package:online_pharmacy/funcations/BuyMassageFunc.dart';
import 'package:online_pharmacy/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartProvider.cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : Column(
              children: [
                Expanded(
                  flex: 11,
                  child: ListView.builder(
                    itemCount: cartProvider.cartItems.length,
                    padding: EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Card(
                          child: ListTile(
                            leading:
                                Image.asset(cartProvider.cartItems[index].img),
                            title: Text(cartProvider.cartItems[index].title),
                            subtitle:
                                Text(cartProvider.cartItems[index].description),
                            trailing: Text(
                                '${cartProvider.cartItems[index].price.toStringAsFixed(2)} Birr'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    title: 'Place Order',
                    onPressed: () {
                      showCustomDialog(context);
                    },
                  ),
                ),
                Spacer()
              ],
            ),
    );
  }
}
