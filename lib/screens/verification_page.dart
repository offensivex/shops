import '../auth/login_page.dart';
import '../auth/sing_up_page.dart';
import '../utils/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VerificationSentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.pageBackgroundColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 0), // Adjust the horizontal padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colorz
                      .containerBackgroundColor, // Set your desired background color
                  borderRadius: BorderRadius.circular(
                      10), // Set your desired border radius
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/logo.png',
                      // width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Verification email has been sent.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colorz.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Verify to continue.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colorz.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(
                      Icons.email_outlined,
                      size: 80,
                      color:
                          Colorz.appBarColor, // Replace with your desired color
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Go to  |   ",
                    style: TextStyle(
                      color: Colorz.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => LoginPage(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration:
                                const Duration(milliseconds: 200),
                          ),
                        );
                      },
                    style: TextStyle(
                      color: Colorz.appBarColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "  |  ",
                    style: TextStyle(
                      color: Colorz.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'Register',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => SignUpPage(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration:
                                const Duration(milliseconds: 200),
                          ),
                        );
                      },
                    style: TextStyle(
                      color: Colorz.appBarColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
