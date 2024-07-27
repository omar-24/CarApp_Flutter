import 'package:carapp/screens/aboutUsScreen.dart';
import 'package:carapp/screens/carscreen.dart';
import 'package:carapp/screens/contactUs.dart';
import 'package:carapp/screens/detailscreen.dart';
import 'package:carapp/screens/loginscreen.dart';
import 'package:carapp/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(const carApp());
}

class carApp extends StatelessWidget {
  const carApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "carscreen":(context)=>carscreen(),
        "detailscreen":(context)=>detailscreen(),
        "loginscreen" :(context)=>loginscreen(),
        "aboutUsScreen":(context)=>aboutUsScreen(),
        "contactUs":(context)=>contactUs(),

      },
      home: splashScreen(),
    );
  }

}

