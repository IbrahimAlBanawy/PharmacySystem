import 'package:pharmacy/Admin/addNewEmployee.dart';
import 'package:pharmacy/Admin/fireEmployee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
