import 'package:flutter/material.dart';
import 'package:online_pharmacy/sample/vitamin_sample.dart';
import 'package:online_pharmacy/widget/itemwidget%20for%20midicne.dart';

// ignore: camel_case_types
class vitemanpage extends StatelessWidget {
  const vitemanpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4f7bce),
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          //     width: MediaQuery.of(context).size.width,
          //     height: 60,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: const Color(0xff6b97e4),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: TextField(
          //         decoration: InputDecoration(
          //       border: InputBorder.none,
          //       hintText: "Find Your vitmeen",
          //       hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          //       prefixIcon: Icon(Icons.search,
          //           size: 30, color: Colors.white.withOpacity(0.5)),
          //     )),
          //   ),
          // ),
          
          const SizedBox(
            height: 15,
          ),
          ItemWidgetmidice(item: vitaminSample),
        ],
      ),
    );
  }
}
