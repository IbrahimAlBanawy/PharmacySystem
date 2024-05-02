import 'package:flutter/material.dart';
import 'package:pharmacy/Customer/shoppingCart.dart';
import 'shoppingCart.dart';
import 'paymentPage.dart';
import 'offers.dart';
import 'newAddress.dart';
import 'detiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: customer(),
    );
  }
}

class customer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // Implement your shopping cart functionality here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShoopingCart()),
            );
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery to',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Text(
              'Mansoura. Governorate.',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'How can we help you?',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Hello!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  'How can we help?',
                  style: TextStyle(fontSize: 25, color: Colors.grey[500]),
                ),
                SizedBox(height: 40.0),
                Text(
                  'Sections',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 10.0),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Stops scrolling
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    SectionItem(
                        icon: Icons.woman,
                        text: 'Women\'s care',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.man,
                        text: 'Men\'s Care',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.brush,
                        text: 'Medical tools',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.local_pharmacy,
                        text: 'Medicines',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.local_offer,
                        text: 'Offers',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.local_hospital,
                        text: 'Oral care',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.person_pin,
                        text: 'Personal Care',
                        color: Colors.white),
                    SectionItem(
                        icon: Icons.child_care,
                        text: 'Baby Products',
                        color: Colors.white),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Brands',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 10.0),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Stops scrolling
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    BrandItem(image: AssetImage('images/gsk.jpeg')),
                    BrandItem(image: AssetImage('images/majestic.jpeg')),
                    BrandItem(image: AssetImage('images/nivea.jpeg')),
                    BrandItem(image: AssetImage('images/emtnan.jpeg')),
                    BrandItem(image: AssetImage('images/gillette.jpeg')),
                    BrandItem(image: AssetImage('images/oral.jpeg')),
                    BrandItem(image: AssetImage('images/fa.jpeg')),
                    BrandItem(image: AssetImage('images/garnier.jpeg')),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Best Sellers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      child: BestSellerItem(
                        image: AssetImage('images/pampers.jpeg'),
                        text: 'Best Seller 1',
                        price: '\$10.99',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: BestSellerItem(
                        image: AssetImage('images/nivea2.jpeg'),
                        text: 'Best Seller 2',
                        price: '\$8.99',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                SizedBox(height: 10.0),
                EndBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  SectionItem({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement action for tapping the section item
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement action for tapping the button
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetilesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.white70,
                padding: EdgeInsets.all(16.0),
                shape: CircleBorder(),
              ),
              child: Icon(
                icon,
                size: 35,
                color: Colors.lightBlue,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BrandItem extends StatelessWidget {
  final ImageProvider image;

  BrandItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement action for tapping the brand item
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image(
            image: image,
            fit: BoxFit.cover, // Adjusts the image size to fit the container
          ),
        ),
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String price;

  BestSellerItem(
      {required this.image, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Image(
            image: image,
            width: 130,
            height: 130,
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Implement action for tapping the button
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoopingCart()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text(
              'Add to Cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EndBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[50],
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          EndBarItem(icon: Icons.home, text: 'House'),
          EndBarItem(icon: Icons.person, text: 'My Account'),
          EndBarItem(icon: Icons.notifications, text: 'Notifications'),
          EndBarItem(icon: Icons.local_offer, text: 'Offers'),
        ],
      ),
    );
  }
}

class EndBarItem extends StatelessWidget {
  final IconData icon;
  final String text;

  EndBarItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
          onPressed: () {
            // Implement action for tapping the button
            //////////////////////////////////////////////////////////////////////////////////////////
          },
        ),
        SizedBox(height: 6.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
