import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String? image;
  Item({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 98,
      margin: EdgeInsets.only(top: 605, left: 30),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(26)),
      child: Center(child: Image.asset(image!)),
    );
  }
}

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 681),
      child: Image.asset("assets/images/button.png"),
    );
  }
}
