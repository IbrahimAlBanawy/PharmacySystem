import 'package:flutter/material.dart';
import 'package:pharmacy/Login/loginMainScreen.dart';
import 'package:pharmacy/Login/loginPage.dart';
import 'package:pharmacy/Login/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        "homepage": (context) => LoginScreen(),
        "signup": (context) => Signup(),
        "login": (context) => LoginPage(),
      },
    );
  }
}
