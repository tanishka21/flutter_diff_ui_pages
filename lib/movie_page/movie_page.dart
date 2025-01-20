import 'package:fashion_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Stack(
                    alignment: Alignment.center,

                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Icon(Icons.arrow_back, color: Colors.black, size: 100),
                          Image.asset('assets/1.png'),

                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Icon(
                        Icons.play_circle_outline_outlined,
                        color: Colors.white,
                        size: 120,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/2.png',
                      height: 220,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1994 Comedy/Romance',
                          style: GoogleFonts.podkova(
                            color: Colors.blueAccent,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Andaaz Apna Apna',
                          style: GoogleFonts.podkova(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),
                        ),
                        Text(
                          'Andaaz Apna Apna is a 1994 Indian Hindi-language comedy film directed by Rajkumar Santoshi and produced by Vinay Kumar Sinha. It stars Aamir Khan, Salman Khan, Raveena Tandon, Karishma Kapoor,, etc.',
                          style: GoogleFonts.podkova(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 2),
              Row(
                children: [
                  Text(
                    'Cast : ',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Salmaan, Amir, Karishna, Ravina',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Director : ',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rajkumar Santoshi',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Awards : ',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Best Comedian, Best Film',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Language : ',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hindi',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Release Country : ',
                    style: GoogleFonts.podkova(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'India',
                    style: GoogleFonts.podkova(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(thickness: 2),
              Text(
                'More Movie Posters ',
                style: GoogleFonts.podkova(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(thickness: 2),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/${index + 2}.png',
                          height: 160,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
