import 'package:flutter/material.dart';
import 'package:ui_login_pages/components/button.dart';
import 'package:ui_login_pages/login_page3/app_color3.dart';
import 'package:ui_login_pages/login_page3/app_theme3.dart';
import 'package:ui_login_pages/login_page3/login_page3_login.dart';
import 'package:ui_login_pages/login_page3/login_page3_signup.dart';

class LoginPage3Welcome extends StatefulWidget {
  const LoginPage3Welcome({super.key});

  @override
  State<LoginPage3Welcome> createState() => _LoginPage3WelcomeState();
}

class _LoginPage3WelcomeState extends State<LoginPage3Welcome> {
  ThemeData theme = AppTheme3.appTheme3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("Welcome", style: theme.textTheme.titleLarge),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Atomatic identity verification which enable you verify your identity",
                    style: theme.textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 20),
                Image.asset(
                  "assets/assets_loging_page3/Illustration.png",
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        theme: theme,
                        text: 'Login',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage3Login(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        theme: theme,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage3SignUp(),
                          ),
                        ),
                        text: 'Sign Up',
                        color: AppColor3().yellow,
                      ),
                    ),
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
