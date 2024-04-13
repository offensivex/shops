import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utils/snack_bar.dart';

class AuthService {
  Future passwordReset(String email, BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      // ignore: use_build_context_synchronously
      Snackbar.showSnackbar(context, "Email Sent Saccessfully");

    } on FirebaseAuthException catch (e) {
      Snackbar.showSnackbar(context, e.message.toString());
    }
  }
}
