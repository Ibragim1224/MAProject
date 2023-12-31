import 'package:flutter/material.dart';
import 'package:second_pro/model/movie.dart';


class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

//  MovieDetailsScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              movie.imageUrl
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.year.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




















