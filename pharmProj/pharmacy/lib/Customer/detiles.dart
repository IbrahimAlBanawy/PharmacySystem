import 'package:flutter/material.dart';

class DetilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Navigate back when back arrow is pressed
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Implement shopping cart action
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // First section with image in the middle and text below it
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'images/nivea.jpeg', // Path to your asset image
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vaseline Jelly for child care',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '\$9.99', // Replace with actual price
                      style:
                          TextStyle(fontSize: 18.0, color: Colors.lightGreen),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Second section
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 8.0),
                    Text('Site'),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    SizedBox(width: 8.0),
                    Text('Time Alarm'),
                  ],
                ),
              ],
            ),
          ),
          // Third section
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Quantity',
                    textAlign: TextAlign.end,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 16.0),
                QuantitySelector(),
              ],
            ),
          ),
          // Fourth section
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bold Text',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Regular Text',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to home screen
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Navigate to profile screen
              },
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                // Navigate to alarm screen
              },
            ),
            IconButton(
              icon: Icon(Icons.local_offer),
              onPressed: () {
                // Navigate to offers screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: _decrement,
          color: Colors.grey, // Gray color for decrement button
        ),
        SizedBox(width: 8.0),
        Text(
          '$_quantity',
          style: TextStyle(fontSize: 24.0),
        ),
        SizedBox(width: 8.0),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: _increment,
          color: Colors.lightGreen, // Green color for increment button
        ),
      ],
    );
  }
}
