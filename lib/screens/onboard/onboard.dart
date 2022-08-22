// import 'package:finalyearproject/core/widgets/button.dart';
// import 'package:flutter/material.dart';

// class Onboard extends StatefulWidget {
//   const Onboard({Key? key}) : super(key: key);

//   @override
//   State<Onboard> createState() => _OnboardState();
// }

// class _OnboardState extends State<Onboard> {
//   int index = 0;
//   //change button text after reaching last index

//   changebuttonText() {
//     if (index == 0 || index == 1 || index == 2) {
//       return "Next";
//     } else {
//       return "Ready";
//     }
//   }

// //function to change button color after reaching the last index
//   changebuttonColor() {
//     if (index == 0 || index == 1 || index == 2 || index == 3) {
//       return Colors.purple;
//     } else {
//       return const Color(0xFF692CC3);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Padding(
//         padding:
//             const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
//         child: ListView(
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: GestureDetector(
//                 child: const Text(
//                   "Skip",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: h * 0.5,
//               child: PageView.builder(
//                 onPageChanged: (tappedindex) {
//                   setState(() {
//                     tappedindex = index;
//                   });
//                 },
//                 itemCount: 4,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Column();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:finalyearproject/screens/login.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/button.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int pageIndex = 0;

  late PageController? pageController;

  int index = 0;
  //change button text after reaching last index

  changebuttonText() {
    if (index == 0 || index == 1 || index == 2) {
      return "Next";
    } else {
      return "Ready";
    }
  }

//function to change button color after reaching the last index
  changebuttonColor() {
    if (index == 0 || index == 1 || index == 2 || index == 3) {
      return Colors.purple;
    } else {
      return const Color(0xFF692CC3);
    }
  }

  @override
  void initState() {
    pageController = PageController(initialPage: pageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
        child: ListView(
          children: [
            pageIndex != 2
                ? Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginn()),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF692CC3),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(height: 200),
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: 3,
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 50),

                      // image widget goes here

                      Text(
                        "........Hello I'm Esther, \n an AI developed by Israel  that allows you Speek and Hear",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            ReusableButton(
              text: changebuttonText(),
              color: const Color(0xFF692CC3),
              press: () {},
              textcolor: Colors.white,
            ),
            const SizedBox(height: 50),
            const Text(
              "Let me Speek for you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF8D8D8D),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
