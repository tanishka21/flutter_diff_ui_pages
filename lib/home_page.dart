import 'package:fashion_app/fashion_page/fashion_page.dart';
import 'package:fashion_app/movie_page/movie_page.dart';
import 'package:fashion_app/movie_streaaming/movie_streaming.dart';
import 'package:fashion_app/music_player/music_player.dart';
import 'package:fashion_app/shopping_page/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Column(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SizedBox(height: 300),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FashionPage()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'Fashion Page',
              style: GoogleFonts.podkova(
                color: Colors.white,
                height: 3.5,
                fontSize: 15,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviePage()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'Movie Page',
              style: GoogleFonts.podkova(
                color: Colors.white,
                height: 3.5,
                fontSize: 15,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MusicPlayer()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'Music Player Page',
              style: GoogleFonts.podkova(
                color: Colors.white,
                height: 3.5,
                fontSize: 15,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MovieStreaming()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'Movie Streaming Page',
              style: GoogleFonts.podkova(
                color: Colors.white,
                height: 3.5,
                fontSize: 15,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingPage()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(
              'Shopping App UI',
              style: GoogleFonts.podkova(
                color: Colors.white,
                height: 3.5,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
