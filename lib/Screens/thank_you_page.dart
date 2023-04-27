import 'package:flutter/material.dart';

///Thannk you page
class ThankyouPage extends StatelessWidget {
  ///make const
  const ThankyouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Expanded(
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

              //bottom signature text
              Text('Made with ❤️ by @Ugocode'),
            ],
          ),
        ),
      ),
    );
  }
}
