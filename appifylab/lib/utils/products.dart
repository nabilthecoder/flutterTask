// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  final String image;
  final String productName;
  const ProductList({
    super.key,
    required this.image,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 168,
              width: 150,
              child: Image.asset(image),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              height: 24,
              width: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Center(
                child: Text(
                  '\$10.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 98, top: 116),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 126, 16, 199)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          productName,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Delicious Pepperoni Pizza',
          style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ],
    );
  }
}
