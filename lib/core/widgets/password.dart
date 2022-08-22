import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myfield2 extends StatelessWidget {
  final String hinttext;
  const Myfield2({Key? key, required this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF692CC3),
      cursorWidth: 5,
      obscureText: true,
      autocorrect: false,
      keyboardType: TextInputType.text,
      showCursor: true,
      controller: null,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFF692CC3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFF692CC3),
          ),
        ),
      ),
    );
  }
}
