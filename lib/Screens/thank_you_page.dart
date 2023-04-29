import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

///Thannk you page
class ThankyouPage extends StatelessWidget {
  ///make const
  const ThankyouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.teal[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                '🎊🎊',
                style: TextStyle(fontSize: 80),
              ).animate().shake(duration: const Duration(seconds: 1)),
              const Text(
                'Thank You For Viewing',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Spacer(),

              //bottom signature text
              const Text('Made with ❤️ by @Ugocode'),
            ],
          ),
        ),
      ),
    );
  }
}
