import 'package:animate_do/animate_do.dart';
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
            child: Column(
              //by defualt crossAxisAlignment is center
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  child: Text("Welcome", style: theme.textTheme.titleLarge),
                ),
                SizedBox(height: 20),
                FadeInUp(
                  duration: Duration(milliseconds: 1300),
                  child: Text(
                    "Atomatic identity verification which enable you verify your identity",
                    style: theme.textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 20),
                FadeInUp(
                  duration: Duration(milliseconds: 1400),
                  child: Container(
                    height: size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/assets_loging_page3/Illustration.png",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FadeInUp(
                  duration: Duration(milliseconds: 1500),
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
                SizedBox(height: 10),
                FadeInUp(
                  duration: Duration(milliseconds: 1600),
                  child: MyButton(
                    border: false,
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
          ),
        ),
      ),
    );
  }
}
