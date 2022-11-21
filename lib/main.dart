import 'package:flutter/material.dart';
import 'package:smart_home_ui/pages/homepage.dart';
import 'package:smart_home_ui/pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
