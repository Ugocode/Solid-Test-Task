import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:solid_task/Screens/thank_you_page.dart';

import 'package:solid_task/utils/constants.dart';

///my home page
class MyHomePage extends StatefulWidget {
  ///make home page const
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? newColor;

  ///function for changing colors:
  void changeColor() {
    final Random random = Random();

    final Color backgrndColor = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      2,
    );

    setState(() {
      newColor = backgrndColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ///call the color function
        changeColor();
      },
      child: Scaffold(
        ///to get our background color
        backgroundColor: newColor,
        appBar: AppBar(
          title: const Text("Tap On the Screen"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello there! ',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                  // color: Colors.green,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: <Color>[
                        Colors.pinkAccent,
                        Colors.orange,
                        Colors.deepPurpleAccent,
                        Colors.blue,
                        Colors.pink,
                      ],
                    ).createShader(
                      const Rect.fromLTWH(0.0, 0.0, colorWdith, colorHeight),
                    ),
                ),
              )

                  ///adding some animations to the text
                  .animate()
                  .flip(duration: const Duration(seconds: 2))
                  .scale()
                  .then()
                  .shimmer(delay: textShimmer.ms),
              const Text(
                '👋',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              )
                  .animate()
                  .scale(delay: emojiShimmerValue.ms)
                  .shake(duration: const Duration(seconds: 1))
            ],
          ),
        ),

        ///navigate to next screen
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push<MaterialPageRoute>(
              context,
              MaterialPageRoute(
                builder: (context) => const ThankyouPage(),
              ),
            );
          },
          tooltip: 'New Screen',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
