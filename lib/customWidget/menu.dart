import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  String? image;
  Color? color;

  Menu({this.image, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.black)),
      child: Image.asset(image!),
    );
  }
}
