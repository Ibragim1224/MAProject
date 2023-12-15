import 'package:flutter/material.dart';
import 'package:second_pro/model/movie.dart';
import 'package:second_pro/model/movie_details_screen.dart';


class AdditionalPage extends StatelessWidget {
  const AdditionalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Additional"),
      ),
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            Movie movie = movieList[index];
            return Card(
              shadowColor: Colors.blue,
              child: ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.year.toString()),
                leading: Image.asset(movie.imageUrl),

                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MovieDetailsScreen(movie:Movie(title: movie.title, description: movie.description, imageUrl: movie.imageUrl, year:movie.year),)));
                },
              ),
            );

      }),);
  }
}














