
import 'package:flutter/material.dart';
import 'package:smartcanteen/Screens/canteen/canteenHome.dart';
import 'package:smartcanteen/Screens/enterIP.dart';
import 'package:smartcanteen/Screens/user/homescreen.dart';
import 'package:smartcanteen/Screens/login.dart';
import 'package:smartcanteen/Screens/spalshscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: 
      IpScreen()
    );
  }
}
