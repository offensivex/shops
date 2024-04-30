import '../controller/signup_controller.dart';
import '../controller/validation_controller.dart';
import '../auth/login_page.dart';
import '../screens/home.dart';
import '../screens/verification_page.dart';
import '../utils/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpAuthController authController = SignUpAuthController();

  bool isActive = false;
  bool _isObscure = true;
  bool _registrationInProgress = false; // Added flag for registration progress

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

  String? _emailError;
  String? _passwordError;
  String? _phoneNumberError;
  String? _userNameError;
  var validator = Validator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.pageBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/logo.png',
                // height: 180, // Adjust the height as needed
                width: 230, // Set width to occupy the entire available space
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              //   Text(
              //     'Detector+',
              //     textAlign: TextAlign.left,
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 28,
              //       color: Colorz.appBarColor,
              //     ),
              //   ),
              // ]),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _userNameController,
                onChanged: (value) {
                  setState(() {
                    _userNameError = validator.validateUsername(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: 'User Name',
                  errorText: _userNameError,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.person_outline_sharp,
                    size: 22,
                    color: Colorz.appBarColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                controller: _phoneNumberController,
                onChanged: (value) {
                  setState(() {
                    _phoneNumberError = validator.validatePhoneNumber(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  errorText: _phoneNumberError,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.phone,
                    size: 22,
                    color: Colorz.appBarColor,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 14,
              ),
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
              TextField(
                controller: _passwordController,
                obscureText: _isObscure,
                onChanged: (value) {
                  setState(() {
                    _passwordError = validator.validatePassword(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: _passwordError,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colorz.appBarColor,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colorz.appBarColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                controller: _cpasswordController,
                obscureText: _isObscure,
                onChanged: (value) {
                  setState(() {
                    _passwordError = validator.validatePassword(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  errorText:
                      _passwordController.text != _cpasswordController.text
                          ? 'Passwords do not match'
                          : null,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colorz.appBarColor,
                  ),
                  suffixIcon: PasswordStrengthIndicator(
                    password: _cpasswordController.text,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isActive,
                    onChanged: (value) => setState(() {
                      isActive = value!;
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      'I agree with the terms and conditions\nand privacy policy',
                      style: TextStyle(
                          color: Color.fromARGB(255, 114, 114, 114),
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 20, 98, 162),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3.0,
                  ),
                  onPressed: _registrationInProgress
                      ? null
                      : () async {
                          await _handleRegistration();
                        },
                  child: _registrationInProgress
                      ? CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                      : Text(
                          'Sign up',
                          style: TextStyle(fontSize: 16),
                        ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: "Already have an account? ",
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
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration:
                                const Duration(milliseconds: 200),
                          ),
                        );
                      },
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

// Helper function to wait for email verification
  Future<bool> waitForEmailVerification(User user) async {
    const maxWaitTime = Duration(minutes: 20);
    DateTime startTime = DateTime.now();

    while (DateTime.now().difference(startTime) <= maxWaitTime) {
      await user.reload();
      user = FirebaseAuth.instance.currentUser!;

      if (user.emailVerified) {
        // User is verified, return true
        return true;
      }

      // Wait for a short interval before checking again
      await Future.delayed(Duration(seconds: 5));
    }

    // Verification not successful after 20 minutes, return false
    return false;
  }

  Future<void> _handleRegistration() async {
    if (mounted) {
      setState(() {
        _registrationInProgress = true;
      });
    }

    String userName = _userNameController.text.trim();
    String email = _emailController.text.trim();
    String phoneNumber = _phoneNumberController.text.trim();
    String password = _passwordController.text.trim();

    try {
      User? user = await authController.signUpUser(email, password, context);

      if (user != null) {
        // Send email verification
        await authController.uploadUserData(
            user.uid, userName, email, phoneNumber, context);

        // Navigate to the verification sent page
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => VerificationSentPage()),
          );
        }

        await user.sendEmailVerification();

        // Wait for email verification
        bool verificationSuccessful = await waitForEmailVerification(user);

        if (mounted) {
          if (verificationSuccessful) {
            // Navigate to the home page and reset the navigation history
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
              (route) =>
                  false, // This will remove all the routes until the new route is pushed
            );
          } else {
            // Verification not successful after 20 minutes, navigate to login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }
        }
      } else {
        // Handle sign-up failure
        print("Sign-up failed");
      }
    } catch (e) {
      // Handle registration error
      print("Error during registration: $e");
    } finally {
      if (mounted) {
        setState(() {
          _registrationInProgress = false;
        });
      }
    }
  }
}

class PasswordStrengthIndicator extends StatelessWidget {
  final String password;

  const PasswordStrengthIndicator({Key? key, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PasswordStrength strength = Validator.checkPasswordStrength(password);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 8,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: _getPasswordStrengthColor(strength),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.visibility,
            color: Colorz.appBarColor,
          ),
          onPressed: () {
            // Toggle the password visibility
            // Implement as needed
          },
        ),
      ],
    );
  }

  Color _getPasswordStrengthColor(PasswordStrength strength) {
    switch (strength) {
      case PasswordStrength.Weak:
        return Colors.red;
      case PasswordStrength.Moderate:
        return Colors.amber;
      case PasswordStrength.Strong:
        return Colors.green;
      default:
        return Colors.transparent;
    }
  }
}
