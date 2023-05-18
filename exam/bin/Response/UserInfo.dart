import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';

import '../Model/models.dart';
import 'loginResponse.dart';

// user info checks
userInfo(Request req) async {
  File myFile = File("Info.json");
  //final List content = json.decode(await myFile.readAsString());

  myFile.writeAsString(json.encode(await User.asMap()));

  return Response.ok("User added successfully!");
}
