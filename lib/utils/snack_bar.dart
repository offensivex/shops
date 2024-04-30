import '../utils/color.dart';
import 'package:flutter/material.dart';

class Snackbar {
  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
              color: Colorz.snackBarText, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colorz.snackBarBackground,
        elevation: 0.0,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
