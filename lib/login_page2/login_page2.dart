import 'package:flutter/material.dart';
import 'package:ui_login_pages/login_page2/app_colors2.dart';
import 'package:animate_do/animate_do.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    ThemeData theme = ThemeData(
      primaryColor: AppColors.primaryColor,

      textTheme: TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 40),
        titleSmall: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );

    return Scaffold(
      backgroundColor: theme.primaryColor,

      appBar: AppBar(backgroundColor: theme.primaryColor, elevation: 0),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              //section 1
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: size.width,
                height: 150,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInLeft(
                      duration: Duration(milliseconds: 1000),
                      child: Text("Login", style: theme.textTheme.titleLarge),
                    ),
                    FadeInLeft(
                      duration: Duration(milliseconds: 1300),
                      child: Text(
                        "Welcome Back",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              //section 2
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: size.width,

                //120 is the height of the section 1
                //appbar height is 56 and you can have this  value by use of AppBar().preferredSize.height
                //56 is the height of bottom bar of os of android
                // height:
                //     size.height - (120 + (AppBar().preferredSize.height) + 56),
                height:
                    size.height - (120 + (AppBar().preferredSize.height) + 56),

                // height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                  color: AppColors.secondaryColor,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInLeft(
                      duration: Duration(milliseconds: 1400),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 8,
                          bottom: 8,
                        ),
                        width: size.width,
                        height: 130,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(20)),
                          // border: Border.all(color: theme.primaryColor),
                          boxShadow: [
                            BoxShadow(
                              color: theme.primaryColor,
                              blurRadius: 20,
                              offset: Offset(0, 7),
                            ),
                          ],

                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                              ),
                            ),
                            Divider(),
                            TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    FadeInLeft(
                      duration: Duration(milliseconds: 1500),
                      child: Text(
                        "Forgot Password?",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 40),

                    // FadeInLeft(
                    //   duration: Duration(milliseconds: 1600),
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       "Login ",
                    //       style: theme.textTheme.titleSmall,
                    //     ),
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: theme.primaryColor,
                    //       padding: EdgeInsets.symmetric(
                    //         horizontal: 60,
                    //         vertical: 10,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    FadeInLeft(
                      duration: Duration(milliseconds: 1600),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Login ",
                          style: theme.textTheme.titleSmall,
                        ),
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        color: theme.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),

                    FadeInLeft(
                      duration: Duration(milliseconds: 1700),
                      child: Text(
                        " Continue with ... ",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 40),

                    Row(
                      children: [
                        Expanded(
                          child: FadeInLeft(
                            duration: Duration(milliseconds: 1800),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Facebook",
                                style: theme.textTheme.titleSmall,
                              ),
                              height: 50,
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: FadeInLeft(
                            duration: Duration(milliseconds: 1900),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Github",
                                style: theme.textTheme.titleSmall,
                              ),
                              height: 50,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
