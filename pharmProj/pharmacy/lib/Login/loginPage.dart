import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/Admin/adminMain.dart';
import 'package:pharmacy/Customer/customerMainPage.dart';
import 'package:pharmacy/Pharmacist/pageMain.dart';
import 'package:pharmacy/StorageManager/storageManagerMain.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your credential to login"),
                  const SizedBox(height: 50.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'User name ',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password)),
                  ),
                  Row(
                    children: [
                      Text(
                        "If you don't have an account ",
                        style: TextStyle(fontSize: 15),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Check the username and navigate accordingly
                      String username = _usernameController.text.toLowerCase();
                      if (username == "pharmacist") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pharmacist()),
                        );
                      } else if (username == "customer") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => customer()),
                        );
                      } else if (username == "admin") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => admin()),
                        );
                      } else if (username == "storage") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StorageManager()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      backgroundColor: Colors.greenAccent,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
