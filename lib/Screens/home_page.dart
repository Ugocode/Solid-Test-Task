import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:solid_task/Screens/thank_you.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? newColor;

  //function for changing  colors:
  changeColor() {
    Random random = Random();

    Color backgrndColor = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );

    setState(() {
      newColor = backgrndColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeColor();
      },
      child: Scaffold(
        backgroundColor: newColor,
        appBar: AppBar(
          title: const Text("Tap On the Screen"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello There! ',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              )
                  .animate()
                  .flip(duration: const Duration(seconds: 2))
                  .scale()
                  .then()
                  .shimmer(delay: 1000.ms),
              const Text(
                '👋',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              )
                  .animate()
                  .scale(delay: 4500.ms)
                  .shake(duration: const Duration(seconds: 1))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ThankyouPage()));
          },
          tooltip: 'New Screen',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
