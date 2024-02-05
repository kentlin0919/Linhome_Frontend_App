import 'package:linhome_frontend_app/import.dart';

class api {
  var apiUrl;
  var apiJwtHeader;
  Future<Response> postapi(
    dynamic body,
    String url,
    String jwt,
  ) async {
    DateTime startTime = DateTime.now();

    Response response = await post(
      Uri.parse(apiUrl + url),
      headers: {
        "Authorization": 'Bearer ' + apiJwtHeader + jwt.toString(),
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );

    debugPrint(apiJwtHeader + jwt.toString());
    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }

  void getapi() {}

  void deletapi() {}

  void putapi() {}
}
