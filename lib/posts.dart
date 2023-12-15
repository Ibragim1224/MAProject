import 'package:flutter/material.dart';
import 'http_service.dart';
import 'post_model.dart';
// future: httpService.getPosts()
class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder<List<Post>>(
        future: httpService.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Container(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].id}",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Text("${snapshot.data![index].stuname}"),
                    ],
                  ),
                ),
              ),
            );
          } else {
            print(snapshot);
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}