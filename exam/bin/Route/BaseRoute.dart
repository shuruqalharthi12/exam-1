import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/BaseResponse.dart';
import 'UserRoute.dart';

class BaseRoute {
  Router get myBaseRoute {
    final router = Router()
      ..get('/', rootHandler)
      ..mount('/User', UserRoute().handler)
      ..all('/<name|.*>', (Request req) {
        return Response.forbidden("you are try access page name ${req.url}");
      });
    return router;
  }
}
