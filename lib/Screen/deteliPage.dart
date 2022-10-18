import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinefooddeliveryapp/Screen/CardPage.dart';
import 'package:onlinefooddeliveryapp/customWidget/item.dart';

class DeteliPage extends StatefulWidget {
  const DeteliPage({Key? key}) : super(key: key);

  @override
  State<DeteliPage> createState() => _DeteliPageState();
}

class _DeteliPageState extends State<DeteliPage> {
  final Color color = Color(0xFF5F1379);
  final Color color1 = Color(0xFFBCBF06);

  final Color _color = Color(0xFFFEEB3C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF9C1ACA),
                    Color(0xFF822F9F),
                    Color(0xFF9F1DCD),
                  ]),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 49, right: 25),
              child: Image.asset("assets/images/pizza.png")),
          Container(
            height: 477,
            width: double.infinity,
            margin: EdgeInsets.only(top: 367),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 385, left: 280),
            child: Text(
              "20",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 30, color: color1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 260),
            child: Row(
              children: [
                Text(
                  "-",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(Icons.add, size: 35),
              ],
            ),
          ),
          Container(
            height: 48,
            width: 104,
            margin: EdgeInsets.only(top: 402, left: 31),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: _color,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 82,
            margin: EdgeInsets.only(top: 460, left: 33),
            child: Text(
              "Pizza",
              style: GoogleFonts.poppins(
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 506, left: 33),
            child: Text(
              "I’ve found that the best frozen pizza is\n Newman’s Own Uncured Pepperoni",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 568, left: 33),
            child: Text(
              "Add One",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                  color: Colors.black),
            ),
          ),
          Container(
            height: 102,
            width: 98,
            margin: EdgeInsets.only(top: 605, left: 30),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(26)),
            child: Center(child: Image.asset("assets/images/chepse.png")),
          ),
          Container(
            margin: EdgeInsets.only(top: 681, left: 95),
            child: Image.asset("assets/images/button.png"),
          ),
          Container(
            height: 102,
            width: 98,
            margin: EdgeInsets.only(top: 605, left: 145),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(26)),
            child: Center(child: Image.asset("assets/images/pepse.png")),
          ),
          Container(
            margin: EdgeInsets.only(top: 681, left: 204),
            child: Image.asset("assets/images/button.png"),
          ),
          Container(
            height: 102,
            width: 98,
            margin: EdgeInsets.only(top: 605, left: 259),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(26)),
            child: Center(child: Image.asset("assets/images/ice.png")),
          ),
          Container(
            margin: EdgeInsets.only(top: 681, left: 322),
            child: Image.asset("assets/images/button.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => CardPage()));
            },
            child: Container(
              height: 54,
              width: double.infinity,
              margin: EdgeInsets.only(left: 39, right: 39, top: 738),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Add to Cart",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
