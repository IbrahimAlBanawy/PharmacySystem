import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Payment Method"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSection("Vodafone Cash", () {
              // Action for Vodafone Cash
            }, "images/cash.jpeg"),
            SizedBox(height: 50),
            _buildSection("Instant", () {
              // Action for Instant
            }, "images/fawry.jpeg"),
            SizedBox(height: 60),
            _buildSection("MasterCard", () {
              // Action for MasterCard
            }, "images/mastercard.jpeg"),
            SizedBox(height: 60),
            _buildSection("PayPal", () {
              // Action for PayPal
            }, "images/paypal.jpeg"),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Add new card action
              },
              child: Text(
                "Add a new card",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0),
              ),
            ),
            SizedBox(height: 40),
            _buildSection("Payment upon receipt", () {
              // Action for Payment upon receipt
            }, null), // No image for this section
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String text, VoidCallback onPressed, String? imagePath) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath,
                height: 40,
                width: 40,
              ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 25),
            ),
            Spacer(),
            if (onPressed != null)
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: onPressed,
              ),
          ],
        ),
      ),
    );
  }
}
