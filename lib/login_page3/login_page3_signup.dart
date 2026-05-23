import 'package:flutter/material.dart';
import 'package:ui_login_pages/components/button.dart';
import 'package:ui_login_pages/components/text_field.dart';
import 'package:ui_login_pages/login_page3/app_color3.dart';
import 'package:ui_login_pages/login_page3/app_theme3.dart';

class LoginPage3SignUp extends StatelessWidget {
  const LoginPage3SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = AppTheme3.appTheme3;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Center(
            child: Column(
              children: [
                Text('Sign Up', style: theme.textTheme.titleLarge),
                SizedBox(height: 20),
                Text(
                  "Create an account , it's free",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 40),
                MyTextField(lable: "Email"),
                SizedBox(height: 20),
                MyTextField(lable: "password"),
                SizedBox(height: 20),
                MyTextField(lable: "confirm password"),
                SizedBox(height: 60),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        theme: theme,
                        color: AppColor3().green,
                        text: 'Sign Up',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: theme.textTheme.labelMedium,
                    ),
                    Text(" Login", style: theme.textTheme.titleMedium),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
