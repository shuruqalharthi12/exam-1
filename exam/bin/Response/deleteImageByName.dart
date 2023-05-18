import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import '../Model/models.dart';

deleteImageByName(Request _, String image) async {
  final file = File('bin/images/$image');

  final body = await req.read().expand((bit) => bit).toList();

  file.removeWhere('bin/Images/$image');

  await file.writeAsBytes(body);
  return Response.ok("file deleted");
}
