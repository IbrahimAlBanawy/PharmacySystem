import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy/Pharmacist/searchPatientResult.dart';
import 'package:pharmacy/Pharmacist/textInputFormatter.dart';

class SearchPatientPage extends StatefulWidget {
  @override
  _SearchPatientPageState createState() => _SearchPatientPageState();
}

class _SearchPatientPageState extends State<SearchPatientPage> {
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapped outside the text fields
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(
            238, 238, 238, 1), // Set background color of the page
        appBar: AppBar(
          backgroundColor:
              Colors.grey[200], // Set background color of the AppBar
          automaticallyImplyLeading: false, // Remove the back arrow
          leading: IconButton(
            icon: Icon(
              Icons.search,
              size: 50, // Set the size of the icon
              color: Colors.black, // Set the color of the icon
            ),
            onPressed: () {
              // Dismiss the keyboard before navigating
              FocusScope.of(context).unfocus();
              Navigator.pop(context);
            },
          ), // Search icon
          title: Text('Search Patient'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space between buttons and top
              Text(
                "Please Enter Patient Data",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20), // Add some space between message and container
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Patient Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _ageController,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+$')), // Allow only digits
                          FilteringTextInputFormatter.digitsOnly,
                          RangeTextInputFormatter(
                              min: 0, max: 150), // Limit the range of values
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Age",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 20), // Add some space between container and buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchPatientResultPage(),
                            ));
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Search',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF05DD88),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Dismiss the keyboard before navigating
                        FocusScope.of(context).unfocus();
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF05DD88),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
