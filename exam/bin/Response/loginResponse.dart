import 'dart:convert';
import 'package:shelf/shelf.dart';

List<Map> User = [];

// login checks
loginResponse(Request req) async {
  final Map Users = jsonDecode(await req.readAsString());

  for (var element in User) {
    if (Users["username"] == element && Users["password"] == element) {
      return Response.ok(
        " login  successfully",
        headers: {"Content-Type": "Application/json"},
      );
    }
  }
}

// singing checks
signUpResponse(Request req) async {
  final Map UserSignup = jsonDecode(await req.readAsString());
  User.add(UserSignup);

  print(User);

  return Response.ok(
    " signed up successfully",
    headers: {"Content-Type": "Application/json"},
  );
}
