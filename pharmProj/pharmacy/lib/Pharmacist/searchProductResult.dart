import 'package:flutter/material.dart';
import 'package:pharmacy/Pharmacist/pageMain.dart'; // Import your home page file
import 'package:pharmacy/Pharmacist/buildButton.dart';

class SearchProductResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Result'),
        automaticallyImplyLeading: false, // Remove the back arrow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search results will appear here.'),
            SizedBox(height: 20),
            buildButton('Return Home', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pharmacist()),
              );
            })
          ],
        ),
      ),
    );
  }
}
