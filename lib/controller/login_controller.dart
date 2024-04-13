import '../utils/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> loginUser(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      Snackbar.showSnackbar(context, 'Error logging in: ${e.message.toString()}');
      return null;
    }
  }
}
