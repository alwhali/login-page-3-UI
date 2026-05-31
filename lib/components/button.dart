import 'package:flutter/material.dart';

/// Functional widget version of the original `MyButton` class.
///
/// Parameters:
/// * [theme] – Theme data used to style the button text.
/// * [onPressed] – Callback when the button is tapped.
/// * [text] – Button label.
/// * [color] – Optional background color.
Widget MyButton({
  required ThemeData theme,
  required VoidCallback? onPressed,
  required String text,
  Color? color,
  bool border = true,
}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Text(text, style: theme.textTheme.titleMedium),
    height: 60,
    minWidth: double.infinity,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),

      side: border ? BorderSide(color: Colors.black) : BorderSide.none,
    ),
  );
}
