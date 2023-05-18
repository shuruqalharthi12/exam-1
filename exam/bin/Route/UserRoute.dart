import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/deleteImageByName.dart';
import '../Response/displayAll.dart';
import '../Response/loginResponse.dart';
import '../Response/uploadImage.dart';
import '../Response/UserInfo.dart';

class UserRoute {
  Handler get handler {
    final route = Router()
      ..post('/login', loginResponse)
      ..post('/signup', signUpResponse)
      ..get('/info', userInfo)
      ..post("/upload_image/<file_name>", uploadImage)
      ..get("/display_all", displayAll)
      ..delete("/delete_user_by_id/<id>", deleteImageByName);

    return route;
  }
}
