import 'dart:ui';

import 'package:finalyearproject/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Talk extends StatelessWidget {
  const Talk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final FlutterTts tts = FlutterTts();
  final TextEditingController controller = TextEditingController(text: 'Hello');

  Home({Key? key}) : super(key: key) {
    tts.setLanguage('en');
    tts.setSpeechRate(0.5);
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 100,
              ),
              const SizedBox(
                width: 250,
                child: Text(
                  "Hey I'm Esther, a Speech aiding bot input your texts in the field below and i'll say them for you 💜",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                cursorColor: const Color(0xFF692CC3),
                cursorWidth: 5,
                autocorrect: false,
                keyboardType: TextInputType.text,
                showCursor: true,
                controller: controller,
                decoration: InputDecoration(
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
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Input Text",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
              SizedBox(
                height: h * 0.30,
                child: const Image(
                  image: AssetImage("assets/images/talk.png"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReusableButton(
                  text: "Speak",
                  color: const Color(0xFF692CC3),
                  press: () {
                    tts.speak(controller.text);
                  },
                  textcolor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
