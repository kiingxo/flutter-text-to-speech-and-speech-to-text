import 'package:finalyearproject/core/widgets/textfield.dart';
import 'package:finalyearproject/core/widgets/wrapper.dart';
import 'package:finalyearproject/screens/navbarscreens/talkscreen.dart';
import 'package:flutter/material.dart';

import '../core/widgets/button.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  State<SignUp2> createState() => _SignInState();
}

class _SignInState extends State<SignUp2> {
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
                'Select Password',
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Myfield(hinttext: "Enter Password"),
              const SizedBox(
                height: 15,
              ),
              const Myfield(hinttext: "Confirm Password"),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 30),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableButton(
                    text: "Sign Up",
                    color: const Color(0xFF692CC3),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Wrapper()),
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
                    onPressed: () {},
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
