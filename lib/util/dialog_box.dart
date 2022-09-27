// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            //buttons save & cancel

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(onPressed: onSave, text: 'Save'),
                const SizedBox(width: 8),
                MyButton(onPressed: onCancel, text: 'Cancel'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
