import 'package:flutter/material.dart';
import 'package:pharmacy/Pharmacist/addPatient.dart';
import 'package:pharmacy/Pharmacist/searchPatient.dart';
import 'package:pharmacy/Pharmacist/searchProduct.dart';
import 'package:pharmacy/Pharmacist/writeNotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App with Sidebar and Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: pharmacist(),
    );
  }
}

class pharmacist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: buildBody(context), // Pass the context to buildBody method
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Add your account icon action here
          },
        ),
      ],
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Sidebar Item 1'),
            onTap: () {
              // Add your sidebar item 1 action here
            },
          ),
          ListTile(
            title: Text('Sidebar Item 2'),
            onTap: () {
              // Add your sidebar item 2 action here
            },
          ),
          // Add more list tiles for additional sidebar items
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              'Main Page',
              style: TextStyle(fontSize: 24.0, color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customButton(
                  'Add Patient',
                  Icons.person_add,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPatientPage()),
                    );
                  },
                ),
                SizedBox(height: 10),
                customButton(
                  'Search Product',
                  Icons.search,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchProductPage()),
                    );
                  },
                ),
                SizedBox(height: 10),
                customButton(
                  'Write Notes',
                  Icons.note,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WriteNotesPage()),
                    );
                  },
                ),
                SizedBox(height: 10),
                customButton(
                  'Search Patient',
                  Icons.search,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchPatientPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget customButton(String text, IconData iconData, VoidCallback onPressed) {
    return Container(
      width: 250,
      height: 60,
      margin: EdgeInsets.all(25),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: Colors.black, // Set icon color to black
        ),
        label: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(0xFF05DD88), // Background color
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Button border radius
            ),
          ),
        ),
      ),
    );
  }
}
