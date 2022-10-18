import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinefooddeliveryapp/Screen/deteliPage.dart';
import 'package:onlinefooddeliveryapp/customWidget/cardWidget.dart';
import 'package:onlinefooddeliveryapp/customWidget/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Color(0XFFFFFFFF);
  Color color = Color(0XFF000000);
  Color color2 = Color(0XFF801BA4);
  Color color1 = Color(0XFFC4C4C4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: 33, left: 26),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(top: 102),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 190),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Menu(
                        color: color2,
                        image: "assets/images/image1.png",
                      ),
                      Menu(
                        color: Colors.grey[200],
                        image: "assets/images/image2.png",
                      ),
                      Menu(
                        color: Colors.grey[200],
                        image: "assets/images/image3.png",
                      ),
                      Menu(
                        color: Colors.grey[200],
                        image: "assets/images/image4.png",
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "All",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Dessert",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "Noodle",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.only(top: 22, left: 30),
                    child: Text(
                      "Promotions",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.only(top: 376, left: 29, right: 29),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFBD8BCF),
                        Color(0xFFC581DD),
                        Color(0xFFBC7AD3),
                      ]),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: Container(
                margin: EdgeInsets.only(top: 390),
                child: Text(
                  "Today’s Offer",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: _color,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: Container(
                margin: EdgeInsets.only(top: 426),
                child: Text(
                  "Free box of Fries",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: _color,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 43, right: 43, top: 464),
              child: Text(
                "On all order above 50",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: _color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 295, left: 230, right: 20),
              child: Container(
                height: 162,
                width: 150,
                child: Image.asset(
                  "assets/images/image5.png",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 533, left: 27),
              child: Text(
                "Popular",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: color,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 575, left: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => DeteliPage()));
                    },
                    child: NewWidget(
                      image: "assets/images/image6.png",
                      title: "Pizza",
                      sutitle: "20",
                      subimage: "assets/images/button.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 575, left: 26),
                  child: NewWidget(
                    image: "assets/images/image6.png",
                    title: "Donut",
                    sutitle: "20",
                    subimage: "assets/images/button.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
