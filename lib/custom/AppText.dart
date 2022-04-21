import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String title;
  Color? color;
  double? size;
  FontWeight? weight = FontWeight.normal;
  AppText(this.title, {this.size = 17, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
