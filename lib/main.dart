import 'package:flutter/material.dart';
import 'package:practice/Features/Screens/Login_Screen.dart';
import 'package:practice/Theme/Pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Pallete.darkModeAppTheme,
      home: LogInScreen(),
    );
  }
}
