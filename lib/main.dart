import 'package:flutter/material.dart';
import 'package:solid_task/Screens/my_home_page.dart';

// import 'Screens/my_home_page.dart';

void main() {
  runApp(const Main());
}

/// Starting page of app
class Main extends StatelessWidget {
  ///make myApp const
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Color Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
