import 'package:flutter/material.dart';
import 'package:online_pharmacy/sample/skin_care_sample.dart';
import 'package:online_pharmacy/widget/itemwidget%20for%20midicne.dart';

// ignore: camel_case_types
class skincarepage extends StatelessWidget {
  const skincarepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          ItemWidgetmidice(item: skinCareSample)
        ],
      ),
    );
  }
}
