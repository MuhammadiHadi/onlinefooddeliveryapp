import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 26),
              child: Text(
                "2 items in cart",
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
