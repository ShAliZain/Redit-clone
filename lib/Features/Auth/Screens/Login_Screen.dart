import 'package:flutter/material.dart';
import 'package:practice/core/Common/Sign_in_button.dart';
import 'package:practice/core/Constants/Coonstants.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          Constants.logoPath,
          height: 40,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Dive into anything',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Constants.loginEmotePath,
              height: 400,
            ),
          ),
          SignInButton(),
        ],
      ),
    );
  }
}
