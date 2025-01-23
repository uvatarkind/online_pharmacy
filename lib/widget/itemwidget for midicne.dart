// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:online_pharmacy/model/item.dart';
import 'package:online_pharmacy/provider/cart_provider.dart';
import 'package:online_pharmacy/provider/wish_list_provider.dart';
import 'package:online_pharmacy/screans/item_detail.dart';

import '../funcations/BuyMassageFunc.dart';

class ItemWidgetmidice extends StatelessWidget {
  List<Item> item;
  ItemWidgetmidice({
    super.key,
    required this.item,
  });
  void _showDialog(BuildContext context) {
    showCustomDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < item.length; i++)
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ItemDetail(item: item[i]);
              }));
            },
            child: MedicineItemContainer(item[i]),
          )
      ],
    );
  }
}

class MedicineItemContainer extends StatefulWidget {
  final Item item;
  const MedicineItemContainer(this.item, {super.key});

  @override
  _MedicineItemContainerState createState() => _MedicineItemContainerState();
}

class _MedicineItemContainerState extends State<MedicineItemContainer> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            )
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                widget.item.img,
                width: double.infinity,
                height: 120,
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 2,
                right: -10,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                      final wishList =
                          Provider.of<WishListProvider>(context, listen: false);
                      isFavorite
                          ? wishList.addItem(widget.item)
                          : wishList.removeItem(widget.item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: isFavorite
                              ? Text('${widget.item.title} added to cart')
                              : Text('${widget.item.title} removed from cart'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    widget.item.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                      "${widget.item.description.substring(0, widget.item.description.length > 40 ? 40 : widget.item.description.length)}...",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff3C5B6F)))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.item.price} Birr",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                IconButton.outlined(
                    onPressed: () {
                      final cart =
                          Provider.of<CartProvider>(context, listen: false);
                      cart.addItem(widget.item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('${widget.item.title} added to cart'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.blueAccent,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
