// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String image;
  final Function() ontap;
  const ItemContainer({super.key, required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color(0xff7FBDEA)),
        ),
        // padding: EdgeInsets.all(0),
      ),
      child: Column(children: [
        Image.asset(
          image,
          width: 230,
          height: 200,
          fit: BoxFit.cover,
        ),
      ]),
    );
  }
}
