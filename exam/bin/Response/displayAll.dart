import 'dart:io';

import 'package:shelf/shelf.dart';

displayAll(Request _) async {
  File myFile = File("Infos.json");
  final content = await myFile.readAsString();

  return Response.ok(content, headers: {
    'Content-Type': 'Application/json',
  });
}
