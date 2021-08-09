import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String label;
  final IconData icon;

  GenderCard({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 23.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
