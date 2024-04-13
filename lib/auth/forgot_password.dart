import '../controller/reset_password.dart';
import '../controller/validation_controller.dart';
import '../auth/login_page.dart';
import '../auth/sing_up_page.dart';
import '../utils/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  final AuthService _authService = AuthService();

  bool _emailSent = false;
  var validator = Validator();
  String? _emailError;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.pageBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!_emailSent)
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      'assets/forgot-password.png',
                      // height: 180, // Adjust the height as needed
                      width: double
                          .infinity, // Set width to occupy the entire available space
                      alignment: Alignment.center,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colorz.appBarColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      onChanged: (value) {
                        setState(() {
                          _emailError = validator.validateEmail(value);
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        errorText: _emailError,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colorz.appBarColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colorz.appBarColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 3.0,
                        ),
                        onPressed: () {
                          String email = _emailController.text.trim();
                          if (email.isNotEmpty) {
                            _authService.passwordReset(email, context);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            'Reset Password',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                          text: "Go to ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: 'Log In',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginPage(),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      const Duration(milliseconds: 0),
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
                          text: ' | ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => SignUpPage(),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      const Duration(milliseconds: 0),
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
                    const SizedBox(
                      height: 50,
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
