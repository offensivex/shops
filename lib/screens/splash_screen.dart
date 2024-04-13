import 'dart:async';
import '../Services/authentication_handler.dart';
import '../utils/color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      _navigate();
    });
  }

  _navigate() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    AuthenticationHandler.handleAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.pageBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo here
            Image.asset(
              'assets/logo.png',
              // width: 150,
              height: 230,
            ),
            // SizedBox(height: 20),
            // // Add animated text
            // TyperAnimatedTextKit(
            //   isRepeatingAnimation: false,
            //   speed: Duration(milliseconds: 150),
            //   text: ['MRA'],
            //   textStyle: TextStyle(
            //     fontSize: 40.0,
            //     fontWeight: FontWeight.bold,
            //     color: Colorz.textColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
    // ignore: dead_code
    // _navigate(); // Call _navigate here as well
  }
}
