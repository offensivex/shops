import 'package:cloud_firestore/cloud_firestore.dart';
import '../utils/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpAuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpUser(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      Snackbar.showSnackbar(
          context, 'Error Signing up: ${e.message?.substring(0, 10)}');
      // Handle error as needed
    }
  }

  Future<void> uploadUserData(String userId, String userName, String email,
      String phoneNumber, BuildContext context) async {
    try {
      // Upload user data
      await FirebaseFirestore.instance.collection('Users').add({
        'userId': userId,
        'userName': userName,
        'email': email,
        'phoneNumber': phoneNumber,
      });

      // Create a User instance
      // Uzer user = Uzer(
      //   userName: userName,
      //   userId: userId,
      //   email: email,
      //   phoneNumber: phoneNumber,
      // );

      // // Save the User instance in the Hive box
      // boxUser.add(user);

      // Snackbar.showSnackbar(
      //     context, 'User data uploaded successfully to Firestore');
    } on FirebaseAuthException catch (e) {
      Snackbar.showSnackbar(context, 'Error Signing up: ${e.message?.substring(0, 10)}');
      // Handle error as needed
    }
  }
}
