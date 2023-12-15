import 'package:flutter/foundation.dart';

class Post {
  final int id;
  // final String stuname;
  // final String email;


  Post({
    required this.id,
    // required this.stuname,
    // required this.email,

  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      // stuname: json['stuname'] as String,
      // email: json['email'] as String,
    );
  }
}