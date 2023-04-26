import 'package:flutter/material.dart';

class ThankyouPage extends StatelessWidget {
  const ThankyouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              Text(
                '🎉',
                style: TextStyle(fontSize: 80),
              ),
              Text('Thank You For Viewing', style: TextStyle(fontSize: 20)),
              Spacer(),
              Text('Made with ❤️ by @Ugocode'),
            ]),
      ),
    );
  }
}
