import 'package:pharmacy/Admin/addNewEmployee.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HoverIcon(
            icon: Icons.account_circle,
            onPressed: () {
              // Handle left icon click
              print('Left icon clicked');
            },
          ),
          Text(
            'Main Page',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white), // Change text color
          ),
          HoverIcon(
            icon: Icons.settings,
            onPressed: () {
              // Handle right icon click
              print('Right icon clicked');
            },
          ),
        ],
      ),
    );
  }
}

class HoverIcon extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const HoverIcon({required this.icon, required this.onPressed});

  @override
  _HoverIconState createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onPressed,
        child: Icon(
          widget.icon,
          color: _isHovered ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
