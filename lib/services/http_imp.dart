import 'dart:io';
import 'package:http/http.dart' as http;

Uri url = Uri.http("localhost:3000", "/api/v1/users");
String token = "";

Future<void> get() async {
  var response = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: "Bearer ${token}",
  });
  print(response.statusCode);
  print(response.body);
}

Future<void> post() async {
  var response = await http.post(url, headers: {
    HttpHeaders.authorizationHeader: "Bearer ${token}",
  });
  print(response.statusCode);
  print(response.body);
}

Future<void> put() async {
  var response = await http.put(url, headers: {
    HttpHeaders.authorizationHeader: "Bearer ${token}",
  });
  print(response.statusCode);
  print(response.body);
}

Future<void> delete() async {
  var response = await http.delete(url, headers: {
    HttpHeaders.authorizationHeader: "Bearer ${token}",
  });
  print(response.statusCode);
  print(response.body);
}
