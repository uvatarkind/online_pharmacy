import 'package:flutter/material.dart';
import 'package:online_pharmacy/sample/medicin_sample.dart';

import '../widget/itemwidget for midicne.dart';

// ignore: camel_case_types
class medicinepage extends StatelessWidget {
  const medicinepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          ItemWidgetmidice(
            item: medicine,
          ),
        ],
      ),
    );
  }
}
