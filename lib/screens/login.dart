import 'package:finalyearproject/core/widgets/password.dart';
import 'package:finalyearproject/core/widgets/textfield.dart';
import 'package:finalyearproject/core/widgets/wrapper.dart';
import 'package:finalyearproject/screens/signup.dart';
import 'package:flutter/material.dart';

import '../core/widgets/button.dart';

//demo sign in firebase not yet integrated

class Loginn extends StatefulWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 70, bottom: bottom, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset(
                        "assets/images/bowen.JPG",
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Image.asset(
                        "assets/images/firstone.png",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome to Esther 👋',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF692CC3),
                    fontSize: 24),
              ),
              const SizedBox(height: 10),
              const Text(
                'Already have an account?...Signin!',
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              const SizedBox(height: 30),
              const Myfield(hinttext: "Username"),
              const SizedBox(
                height: 15,
              ),
              const Myfield2(hinttext: "Password"),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 30),
              const Center(child: Text("OR")),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign in with Google",
                    style: TextStyle(
                        color: Color(0xFF692CC3),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableButton(
                    text: "Sign in",
                    color: const Color(0xFF692CC3),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wrapper()),
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: const Text(
                      "Don't have an accout?",
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
