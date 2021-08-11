import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;

  RoundIconButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {},
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      elevation: 10.0,
    );
  }
}
