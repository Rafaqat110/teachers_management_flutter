import 'package:flutter/material.dart';
import 'package:teacher_management/screens/splash_screen.dart';

import 'navigation.dart';
import 'screens/loginScree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teacher Management ',
      home: Splash_Screen(
      ),
    );
  }
}
