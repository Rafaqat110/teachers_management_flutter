
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginScree.dart';
import '../navigation.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return  FlutterSplashScreen.scale(
      gradient:  const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.lightBlue,
          Colors.blue,
        ],
      ),
      childWidget: SizedBox(
        height: 100,
        child: Image.asset("images/chatAppNine.png"),
      ),
      duration: const Duration(milliseconds: 2000),
      animationDuration: const Duration(milliseconds: 1000),

      nextScreen: const NavPage(),

    );
  }
}
