import 'package:fashion_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieStreaming extends StatefulWidget {
  const MovieStreaming({super.key});

  @override
  State<MovieStreaming> createState() => _MovieStreamingState();
}

class _MovieStreamingState extends State<MovieStreaming> {
  double height = 90.0;
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.asset(
                  'assets/movie_streaming/banner.jpeg',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                InkWell(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {});

                if (isExpand == true) {
                  height = 90;
                  isExpand = false;
                } else {
                  height = 500;
                  isExpand = true;
                }
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: height,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8,
                      spreadRadius: 8,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      spacing: 10,
                      children: [
                        Container(color: Colors.grey, width: 100, height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Baaziger',
                              style: GoogleFonts.podkova(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.watch_later,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),

                              height: 30,
                              width: 55,
                              child: Text(
                                '12A',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.podkova(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '2022 * Song * Baaziger * 4 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.podkova(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star_border, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              '4.5ratings',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.podkova(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: 5),
                        Text(
                          'Baaziger Lyrics by Divine ft. Armani White is brand new Hindi song from his Album Gunehgar and its music is given by Karan Kanchan. Baaziger song lyrics are also penned down by Divine, Armani White while thi smusic video has been released under the label Gully Gang/Mass Appeal.',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.podkova(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          spacing: 5,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text(
                                'Read more',
                                style: GoogleFonts.podkova(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 28,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 5,
                              ),

                              child: Icon(Icons.play_arrow_outlined, size: 30),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 5,
                              ),

                              child: Row(
                                children: [
                                  Text(
                                    'Play Song',
                                    style: GoogleFonts.podkova(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow_outlined, size: 30),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
