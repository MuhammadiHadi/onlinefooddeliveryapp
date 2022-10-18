import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewWidget extends StatelessWidget {
  String? image;
  String? subimage;
  String? title;
  String? sutitle;

  NewWidget({this.image, this.title, this.subimage, this.sutitle});

  final Color color12 = Color(0xFFBCBF06);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                image!,
              ),
              radius: 30,
            ),
            ListTile(
              title: Text(
                title!,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                sutitle!,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: color12,
                ),
              ),
              trailing: Image.asset(subimage!),
            )
          ],
        ),
      ),
    );
  }
}
