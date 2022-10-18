import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinefooddeliveryapp/Screen/bottomNavationScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color color = Color(0xFFC4C4C4);
  Color _color = Color(0xFFFFFFFF);
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
                Color(0xFF801BA4),
                Color(0xFF9F1DCD),
              ])),
          child: Column(
            children: [
              Container(
                height: 266,
                width: 259,
                margin: EdgeInsets.only(left: 58, right: 58, top: 87),
                decoration: BoxDecoration(),
                child: CircleAvatar(
                  backgroundColor: color,
                  child: Image.asset(
                    "assets/images/unsplash.png",
                  ),
                ),
              ),
              Container(
                height: 115,
                width: 203,
                margin: EdgeInsets.only(left: 86, right: 86, top: 37),
                child: Center(
                  child: Text("Enjoy Your Food",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 38,
                        color: _color,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 74,
          right: 70,
          top: 568,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => BottomNavationScreen()));
            },
            child: Container(
              height: 70,
              width: 226,
              decoration: BoxDecoration(
                  color: _color, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
