import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  int _selectedIndex = 0;

  void _selectOffer(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Offers",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              // Add your shopping cart functionality here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Section One with scrolling
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: <Widget>[
                  OfferButton(
                    text: "Mans Care",
                    index: 0,
                    isSelected: _selectedIndex == 0,
                    onSelect: _selectOffer,
                  ),
                  OfferButton(
                    text: "Womens Care",
                    index: 1,
                    isSelected: _selectedIndex == 1,
                    onSelect: _selectOffer,
                  ),
                  OfferButton(
                    text: "Special Offers",
                    index: 2,
                    isSelected: _selectedIndex == 2,
                    onSelect: _selectOffer,
                  ),
                  OfferButton(
                    text: "Hear Care",
                    index: 3,
                    isSelected: _selectedIndex == 3,
                    onSelect: _selectOffer,
                  ),
                  OfferButton(
                    text: "Baby Care",
                    index: 4,
                    isSelected: _selectedIndex == 4,
                    onSelect: _selectOffer,
                  ),
                  OfferButton(
                    text: "Cosmetics",
                    index: 5,
                    isSelected: _selectedIndex == 5,
                    onSelect: _selectOffer,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40), // Distance between first and second sections
          // Section Two
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
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
          ),
          SizedBox(height: 30), // Distance between second and third sections
          //section three
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}

class OfferButton extends StatelessWidget {
  final String text;
  final int index;
  final bool isSelected;
  final Function(int) onSelect;

  OfferButton({
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(index);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.lightGreen : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
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
