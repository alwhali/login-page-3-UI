import 'package:flutter/material.dart';

/// A functional widget that builds a labeled [TextField].
///
/// Parameters:
/// * [lable] – The label text displayed above the field.
/// * [obscureText] – Whether to hide the input (e.g., for passwords).
Widget MyTextField({required String lable, bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(lable),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
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
