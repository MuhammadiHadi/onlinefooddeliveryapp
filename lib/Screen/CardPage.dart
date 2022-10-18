import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  final Color color = Color(0xFFBCBF06);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 43, left: 26),
              child: Text(
                "2 items in cart",
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 140,
              width: 135,
              margin: EdgeInsets.only(top: 109, left: 23),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset("assets/images/image6.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 122, left: 176),
              child: Text(
                "Pizza",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 170, left: 176),
              child: Text(
                "20",
                style: GoogleFonts.poppins(
                    color: Color(0xFFBCBF06),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
                height: 140,
                width: 135,
                margin: EdgeInsets.only(top: 274, left: 23),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/images/image6.png",
                )),
            Padding(
              padding: EdgeInsets.only(top: 285, left: 181),
              child: Text(
                "Donut",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 330, left: 181),
              child: Text(
                "20",
                style: GoogleFonts.poppins(
                    color: Color(0xFFBCBF06),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 443, left: 22),
              child: Text(
                "Other Instruction",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 25),
              ),
            ),
            Container(
              height: 74,
              width: double.infinity,
              margin: EdgeInsets.only(top: 494, left: 29, right: 29),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 586, left: 56),
              child: Row(
                children: [
                  Text(
                    "Total:",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    "40",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFBCBF06),
                        fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              height: 54,
              width: double.infinity,
              margin: EdgeInsets.only(left: 39, right: 39, top: 639),
              decoration: BoxDecoration(
                color: Color(0xff801BA4),
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
            Padding(
              padding: EdgeInsets.only(top: 702, left: 130),
              child: Text(
                "Back to menu",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
