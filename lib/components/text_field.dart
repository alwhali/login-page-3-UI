import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String lable;
  const MyTextField({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lable),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          cursorColor: Colors.black,
        ),
      ],
    );
  }
}
