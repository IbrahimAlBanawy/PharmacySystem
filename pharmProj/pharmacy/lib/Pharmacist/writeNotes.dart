import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WriteNotesPage extends StatefulWidget {
  @override
  _WriteNotesPageState createState() => _WriteNotesPageState();
}

class _WriteNotesPageState extends State {
  // Variables to hold the text entered in the text fields
  String noteTitle = '';
  String noteBody = '';

  // Function to show a dialog popup
  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Note Added Successfully"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // GestureDetector to handle taps and dismiss keyboard
      onTap: () {
        FocusScope.of(context).unfocus(); // Unfocus text fields when tapped
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(
            238, 238, 238, 1), // Set background color of the page
        appBar: AppBar(
          backgroundColor:
              Colors.grey[200], // Set background color of the AppBar
          title: Text('Write Notes Page'),
          leading: Icon(
            Icons.note_add,
            size: 50, // Set the size of the icon
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space between buttons and top
              Text(
                "Please Write Your Notes",
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
                        onChanged: (value) {
                          setState(() {
                            noteTitle =
                                value; // Update noteTitle when text changes
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Note Title",
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
                        onChanged: (value) {
                          setState(() {
                            noteBody =
                                value; // Update noteBody when text changes
                          });
                        },
                        maxLines: 5, // Allow multiple lines for the note body
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Note Body",
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
                    width: 120, // Adjusted width for the buttons
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Add functionality to save the notes
                        showSuccessDialog(context); // Show success dialog
                      },
                      icon: Icon(Icons.save,
                          color:
                              Colors.black), // Add save icon with black color
                      label: Text(
                        'Save',
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
                    width: 120, // Adjusted width for the buttons
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel,
                          color:
                              Colors.black), // Add cancel icon with black color
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
