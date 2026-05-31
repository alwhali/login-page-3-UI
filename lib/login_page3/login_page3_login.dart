import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      //title and subtitle of the page
                      FadeInUp(
                        duration: const Duration(milliseconds: 600),
                        child: Column(
                          children: [
                            Text("Login", style: theme.textTheme.titleLarge),
                            const SizedBox(height: 20),
                            Text(
                              "Login to your account",
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),

                      //email and password field
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: Column(
                          children: [
                            MyTextField(lable: "Email"),
                            const SizedBox(height: 20),
                            MyTextField(lable: "password", obscureText: true),
                          ],
                        ),
                      ),

                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyButton(
                                border: false,
                                theme: theme,
                                color: AppColor3().green,
                                text: 'Login',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),

                      FadeInUp(
                        duration: const Duration(milliseconds: 1200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: theme.textTheme.titleSmall,
                            ),
                            Text("Sign Up", style: theme.textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              FadeInUp(
                duration: const Duration(milliseconds: 1600),

                child: Container(
                  height: size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                        "assets/assets_loging_page3/background.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
