// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  final String name;
  final Color color;
  final String image;
  const Menu({
    super.key,
    required this.name,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 97,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 241, 238, 238)),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 7,
            ),
            Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Center(child: Image.asset(image)),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              name,
              style: TextStyle(
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
          ],
        ),
      ),
    );
  }
}
