import 'package:fashion_app/music_player/custom_container.dart';
import 'package:fashion_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: CustomContainer(
                        height: 60,
                        width: 60,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      'Play List',
                      style: GoogleFonts.podkova(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomContainer(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.menu),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                CustomContainer(
                  child: Column(
                    children: [
                      Image.asset('assets/music_palyer/art.jpeg'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Lofi Song',
                                style: GoogleFonts.podkova(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Ishq hai',
                                style: GoogleFonts.podkova(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.favorite, size: 32, color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4:22'),
                  ],
                ),
                SizedBox(height: 25),
                CustomContainer(
                  child: new LinearPercentIndicator(
                    // width: 140.0,
                    lineHeight: 10.0,
                    percent: 0.8,
                    backgroundColor: Colors.transparent,
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        child: Icon(Icons.skip_previous, size: 34),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 2,
                      child: CustomContainer(
                        child: Icon(Icons.play_arrow, size: 34),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: CustomContainer(
                        child: Icon(Icons.skip_next, size: 34),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
