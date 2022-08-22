import 'package:finalyearproject/screens/navbarscreens/Homescreen.dart';
import 'package:finalyearproject/screens/navbarscreens/hear.dart';
import 'package:finalyearproject/screens/navbarscreens/settings.dart';
import 'package:finalyearproject/screens/navbarscreens/talkscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int currentIndex = 0;

  List<Widget> screens = [
    // this list is to put screens here
    const HomeScreen(),
    const Talk(),
    const SpeechToText(),

    const Text("settingpage"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF692CC3),
        iconSize: 21,
        selectedFontSize: 12,
        unselectedFontSize: 11,
        unselectedItemColor: Colors.grey,
        elevation: 10,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        mouseCursor: null,
        type: BottomNavigationBarType.fixed,
        onTap: (int mytabbedindex) {
          setState(() {
            currentIndex = mytabbedindex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
            ),
            label: "Talk",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hearing_rounded,
            ),
            label: "Hear",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Settings",
          ),
        ],
      ),
      body: screens.elementAt(
        currentIndex,
      ),
    );
  }
}
