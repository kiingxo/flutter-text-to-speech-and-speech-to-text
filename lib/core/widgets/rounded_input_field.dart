import 'dart:html';

import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  final FocusNode? focus;
  final ValueChanged<String>? sub;

  final TextEditingController controller;

  const RoundedInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      this.sub,
      this.focus,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.99,
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.next,
        focusNode: focus,
        cursorColor: Colors.black,
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: const Color(0xff677294),
          ),
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xff0EBE7F),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0x1f677294),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xff0EBE7F),
            ),
          ),
        ),
      ),
    );
  }
}
