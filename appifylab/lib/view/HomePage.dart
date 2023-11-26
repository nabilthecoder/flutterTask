// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/menu.dart';
import '../utils/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            floating: false,
            pinned: false,
            backgroundColor: Colors.white,
            flexibleSpace: SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset('lib/images/cover.png', fit: BoxFit.cover),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 60),
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset('lib/images/Left Arrow.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 60),
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset('lib/images/Saved.png'),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Image.asset('lib/images/Profile.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, right: 5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: Image.asset('lib/images/Vector.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Pizza Hut',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 9,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '100+',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '46 Larkrow, London',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          height: 104,
                          width: 60,
                          child: Image.asset('lib/images/Tag.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              child: Image.asset('lib/images/Fill.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Delivery Fee 2\$',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.poppins().fontFamily),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 15,
                                width: 13.5,
                                child: Icon(
                                  Icons.alarm_on_rounded,
                                  size: 15,
                                  color:
                                      const Color.fromARGB(255, 111, 10, 129),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '15-20 mins',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.poppins().fontFamily),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 46,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 236, 236),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 24,
                                  color: const Color.fromARGB(255, 20, 20, 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Search Items',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 129, 128, 128),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recommended Items',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                color: Color.fromARGB(255, 126, 16, 199),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ProductList(
                                image: 'lib/images/pizza2.png',
                                productName: 'Pepperoni pizza',
                              ),
                              SizedBox(width: 10),
                              ProductList(
                                image: 'lib/images/pizza3.png',
                                productName: 'Chicken pizza',
                              ),
                              SizedBox(width: 10),
                              ProductList(
                                image: 'lib/images/pizza2.png',
                                productName: 'Pepperoni pizza',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Menu Of Pizza Hut',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 126, 16, 199),
                                ),
                                child: Center(
                                  child: Text(
                                    'All',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Menu(
                                name: 'Drink',
                                color: Colors.pink,
                                image: 'lib/images/Cup.png',
                              ),
                              SizedBox(width: 10),
                              Menu(
                                name: 'Burger',
                                color: Colors.orange,
                                image: 'lib/images/Mini Burger.png',
                              ),
                              SizedBox(width: 10),
                              Menu(
                                name: 'Cake',
                                color: Colors.pink,
                                image: 'lib/images/Cake.png',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 600,
                          child: GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 15,
                                    mainAxisExtent: 228),
                            children: [
                              ProductList(
                                image: 'lib/images/pizza2.png',
                                productName: 'Pepperoni pizza',
                              ),
                              ProductList(
                                image: 'lib/images/pizza3.png',
                                productName: 'Chicken pizza',
                              ),
                              ProductList(
                                image: 'lib/images/product1.png',
                                productName: 'Pepperoni pizza',
                              ),
                              ProductList(
                                image: 'lib/images/product2.png',
                                productName: 'Pepperoni pizza',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
