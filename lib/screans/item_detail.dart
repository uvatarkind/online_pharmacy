import 'package:flutter/material.dart';
import 'package:online_pharmacy/provider/cart_provider.dart';
import 'package:online_pharmacy/screans/startpage.dart';
import 'package:provider/provider.dart';
import '../funcations/BuyMassageFunc.dart';
import '../funcations/funcation3.dart';
import '../model/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({
    super.key,
    required this.item,
  });

  void _showDialog(BuildContext context) {
    showCustomDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StartPage();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.blue[600]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ClipPath(
              clipper: CurvedBottomClipper2(),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.img),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.98,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Medical Description",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          item.description,
                          style: const TextStyle(
                            color: Color(0xff35374B),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${item.price} Birr",
                              style: TextStyle(
                                  color: Colors.red[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            // _showDialog(context);
                            // Add item to cart logic
                            final cart = Provider.of<CartProvider>(context,
                                listen: false);
                            cart.addItem(item);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${item.title} added to cart'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.blue[700],
                          ),
                          label: Text(
                            "BUY NOW",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Poppins'),
                          ),
                          style: ButtonStyle(
                              minimumSize:
                                  WidgetStateProperty.all(const Size(350, 55)),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.white))))),
                    )
                  ],
                ),
              )),
        )
      ]),
    );
  }
}
