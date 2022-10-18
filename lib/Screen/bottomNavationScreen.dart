import 'package:flutter/material.dart';
import 'package:onlinefooddeliveryapp/Screen/CardPage.dart';
import 'package:onlinefooddeliveryapp/Screen/home.dart';
import 'package:onlinefooddeliveryapp/Screen/person.dart';
import 'package:onlinefooddeliveryapp/Screen/search.dart';

class BottomNavationScreen extends StatefulWidget {
  const BottomNavationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavationScreen> createState() => _BottomNavationScreenState();
}

class _BottomNavationScreenState extends State<BottomNavationScreen> {
  int _currentindex = 0;

  Color _color = Color(0XFFFFFFFF);
  Color color = Color(0XFF000000);

  final List Screen = [
    Home(),
    Search(),
    Card(),
    Person(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[_currentindex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(color: _color, boxShadow: [
            BoxShadow(
              color: color,
              offset: const Offset(4.0, 4.0),
              blurRadius: 19,
              spreadRadius: 0,
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 66),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Home()));
                    },
                    icon: Icon(Icons.home)),
                Icon(Icons.search),
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => CardPage()));
                    },
                    child: Icon(Icons.shopping_bag)),
                Icon(Icons.person),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
