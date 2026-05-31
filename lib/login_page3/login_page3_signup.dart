import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:ui_login_pages/components/button.dart';
import 'package:ui_login_pages/components/text_field.dart';
import 'package:ui_login_pages/login_page3/app_color3.dart';
import 'package:ui_login_pages/login_page3/app_theme3.dart';

class LoginPage3SignUp extends StatelessWidget {
  const LoginPage3SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = AppTheme3.appTheme3;
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height - 50,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Title block
                  Column(
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 600),
                        child: Text(
                          'Sign Up',
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      const FadeInUp(
                        duration: Duration(milliseconds: 800),
                        child: SizedBox(height: 20),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          "Create an account , it's free",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),

                  // Input fields
                  Column(
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 600),
                        child: MyTextField(lable: "Email"),
                      ),
                      const FadeInUp(
                        duration: Duration(milliseconds: 800),
                        child: SizedBox(height: 30),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: MyTextField(
                          lable: "password",
                          obscureText: true,
                        ),
                      ),
                      const FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: SizedBox(height: 30),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: MyTextField(
                          lable: "confirm password",
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),

                  FadeInUp(
                    duration: Duration(milliseconds: 1600),
                    child: Row(
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
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1800),
                        child: Text(
                          "Already have an account?",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 2000),
                        child: Text(
                          " Login",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
