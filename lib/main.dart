import 'package:flutter/material.dart';
import 'package:ui_login_pages/pages/login_page1.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage1());
  }
}
