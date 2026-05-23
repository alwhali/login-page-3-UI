import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.theme,
    required this.onPressed,
    required this.text,
    this.color,
  });

  final ThemeData theme;
  final Function()? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text, style: theme.textTheme.titleMedium),
      height: 60,

      color: color ?? null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50),

        side: BorderSide(color: Colors.black),
      ),
      // padding: EdgeInsets.symmetric(horizontal: 40),
    );
  }
}
