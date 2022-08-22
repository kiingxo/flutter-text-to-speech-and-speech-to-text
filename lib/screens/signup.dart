import 'package:finalyearproject/core/widgets/textfield.dart';
import 'package:finalyearproject/screens/Signup2.dart';
import 'package:finalyearproject/screens/login.dart';
import 'package:flutter/material.dart';

import '../core/widgets/button.dart';

//demo signup

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  bool _isVisible = true;

  void _togglePasswordView() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  static final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repeatPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //

    // (utils)
    // provider bool value for theme preference

    // bottom padding
    var bottom = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70, bottom: bottom, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Esther 👋',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF692CC3),
                    fontSize: 24),
              ),
              const SizedBox(height: 10),
              const Text(
                'Hello, I guess you are new around here. You\ncan start using the application after sign up.',
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Myfield(hinttext: "First name"),
              const SizedBox(
                height: 15,
              ),
              const Myfield(hinttext: "Last name"),
              const SizedBox(
                height: 15,
              ),
              const Myfield(hinttext: "Username"),
              const SizedBox(
                height: 15,
              ),
              const Myfield(hinttext: "Email"),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 30),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableButton(
                    text: "Next",
                    color: const Color(0xFF692CC3),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp2()),
                      );
                    },
                    textcolor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Loginn()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xFF692CC3),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
