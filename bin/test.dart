import 'dart:convert';

import 'package:http/http.dart' as http;

main()async{
  // var response = await http.get(Uri.parse("http://127.0.0.1:8000/core/a"));
  var response = await http.post(Uri.parse("http://127.0.0.1:8000/core/a"),
  body: {
    "username" : "Ruslan",
    "email" : "ruslan@gmail.com",
    "password" : "937431011"
  });
  print(jsonDecode(response.body)["UserName"]);
  print(jsonDecode(response.body)["email"]);
}