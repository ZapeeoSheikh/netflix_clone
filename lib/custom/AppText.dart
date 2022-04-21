import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String title;
  Color color = Colors.white;
  FontWeight weight = FontWeight.normal;
  AppText(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: weight;
      ),
    );
  }
}
