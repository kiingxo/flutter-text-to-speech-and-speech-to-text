import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color color;
  final VoidCallback press;
  const ReusableButton({
    Key? key,
    required this.text,
    required this.color,
    required this.press,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textcolor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
