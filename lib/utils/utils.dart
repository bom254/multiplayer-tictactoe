import 'package:flutter/material.dart';

import '../resources/game_methods.dart';


void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

void showGameDialog(BuildContext context, String text) {
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(
            onPressed: () {
              GameMethods().clearBoard(context);
              Navigator.pop(context);
            },
            child: const Text(
              'Play Again',
            ),
          ),
        ],
      );
    }
  );
}