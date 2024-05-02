import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.jpeg'),

              Text(
                'Welcome',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),

              Text(
                'We wish you good health',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 55,
              ),
              //button
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("login");
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.greenAccent),
                ),
              ),
            ],
          ),
        )));
  }
}
