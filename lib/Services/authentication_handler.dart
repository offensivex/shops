import '../auth/login_page.dart';
import '../screens/home.dart';
import '../screens/verification_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationHandler {
  static Future<void> handleAuthentication(BuildContext context) async {
    bool isLoggedIn = await checkUserLogin();

    if (isLoggedIn) {
      bool isEmailVerified = await checkEmailVerification();

      if (isEmailVerified) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => VerificationSentPage()));
      }
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  static Future<bool> checkUserLogin() async {
    // Replace this with your authentication check logic
    User? user = FirebaseAuth.instance.currentUser;
    return user != null;
  }

  static Future<bool> checkEmailVerification() async {
    // Replace this with your email verification check logic
    User? user = FirebaseAuth.instance.currentUser;

    // Retrieve the verified email from the box

    

    // If no verified email is found or if the emails don't match, check online
    await user?.reload();
    user = FirebaseAuth.instance.currentUser;
    bool onlineVerified = user?.emailVerified ?? false;

    return onlineVerified;
  }
}
