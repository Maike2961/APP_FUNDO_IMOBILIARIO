import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:teste_touch_screen/home/home.dart';
import 'package:teste_touch_screen/home/slash.dart';

import 'login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: "/splash",
     routes: {
      "/splash": (context) => Slash(),
      "/login": (context) => Login(),
       "/home": (context) => MyHomePage(),
     },
     );
  }
}
