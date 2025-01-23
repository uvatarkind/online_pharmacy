import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Cart Number"),
        content: const TextField(),
        actions: [
          ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('audio/short-success.mp3'));
              Fluttertoast.showToast(
                msg: 'Purchase successful',
                toastLength: Toast.LENGTH_SHORT, // time it takes to still appear
                gravity: ToastGravity.BOTTOM, // where it appear
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.lightBlue[500],
                textColor: Colors.white,
                fontSize:20,
              );
              // ignore: use_build_context_synchronously
              Navigator.of(context).pop();
            },
            child: const Text("Buy Now"),
          ),
        ],
      );
    },
  );
}