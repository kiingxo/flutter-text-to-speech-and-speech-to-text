import 'package:finalyearproject/core/widgets/button.dart';
import 'package:finalyearproject/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String user = "Fade";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          hoverColor: Colors.black,
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Color(0xFF692CC3),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Image(image: AssetImage("assets/images/firstone.png")),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                },
                child: SizedBox(
                  height: h * 0.2,
                  child: CircleAvatar(
                    radius: w * 0.15,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage:
                          const AssetImage("assets/images/fade.jpg"),
                      radius: w * 0.14,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Welcome back,$user",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: h * 0.4,
              width: w * 0.9,
              child: const Image(
                image: AssetImage("assets/images/aipics.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
