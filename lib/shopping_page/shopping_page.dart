import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.favorite, color: Colors.red),
          SizedBox(width: 15),
          Icon(Icons.shopping_bag),
          SizedBox(width: 15),
        ],
        backgroundColor: Colors.white,
        title: Text(
          'Soild Short Style',
          style: GoogleFonts.podkova(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topRight,
                  children: [
                    Image.network(
                      'https://baazarkolkata.com/old(12.08.2020)/wp-content/uploads/2019/04/d5.jpg',
                      // width: double.infinity,
                      height: 450,
                    ),
                    Positioned(
                      right: -10,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        height: 50,
                        width: 50,
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text(
                'Solid Shirt Style',
                style: GoogleFonts.podkova(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color.fromARGB(255, 230, 228, 228),
                  border: Border.all(color: Colors.black),
                ),

                child: Text(
                  'Spacial Price',
                  style: GoogleFonts.podkova(
                    color: Colors.red.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '\$30',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$60',

                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rs.50% off',
                    style: GoogleFonts.podkova(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  Container(
                    width: 70,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.3',
                          style: GoogleFonts.podkova(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.white, size: 20),
                      ],
                    ),
                  ),
                  Text(
                    '2814 rataings',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(thickness: 3),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SIZE',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 209, 209),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      'SIZE CHART',
                      style: GoogleFonts.podkova(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                spacing: 4,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromARGB(255, 214, 208, 208),
                      ),
                      child: Center(
                        child: Text(
                          'ADD TO BAG',
                          style: GoogleFonts.podkova(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'BUY NOW',
                          style: GoogleFonts.podkova(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
