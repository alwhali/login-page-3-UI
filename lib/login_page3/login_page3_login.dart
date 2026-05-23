import 'package:flutter/material.dart';
import 'package:ui_login_pages/components/button.dart';
import 'package:ui_login_pages/components/text_field.dart';
import 'package:ui_login_pages/login_page3/app_color3.dart';
import 'package:ui_login_pages/login_page3/app_theme3.dart';

class LoginPage3Login extends StatelessWidget {
  const LoginPage3Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = AppTheme3.appTheme3;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login", style: theme.textTheme.titleLarge),
                      SizedBox(height: 20),
                      Text(
                        "Login to your account",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 20),
                      //textfield email
                      MyTextField(lable: "Email"),
                      SizedBox(height: 20),
                      //textfield password
                      MyTextField(lable: "password"),
                      SizedBox(height: 60),
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              theme: theme,
                              color: AppColor3().green,
                              text: 'Login',
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
                            "Don't have an account?",
                            style: theme.textTheme.titleSmall,
                          ),
                          Text("Sign Up", style: theme.textTheme.titleMedium),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Image.asset(
                "assets/assets_loging_page3/background.png",
                height: 300,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
