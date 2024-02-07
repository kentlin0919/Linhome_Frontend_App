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

    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }

  Future<Response> getapi(
    dynamic body,
    String url,
    String jwt,
  ) async {
    DateTime startTime = DateTime.now();

    Response response = await get(
      Uri.parse(apiUrl + url),
      headers: {
        "Authorization": 'Bearer ' + apiJwtHeader + jwt.toString(),
        "Content-Type": "application/json",
      },
    );

    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }

  Future<Response> putapi(
    dynamic body,
    String url,
    String jwt,
  ) async {
    DateTime startTime = DateTime.now();

    Response response = await put(
      Uri.parse(apiUrl + url),
      headers: {
        "Authorization": 'Bearer ' + apiJwtHeader + jwt.toString(),
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );

    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }

  Future<Response> deletapi(
    dynamic body,
    String url,
    String jwt,
  ) async {
    DateTime startTime = DateTime.now();

    Response response = await delete(
      Uri.parse(apiUrl + url),
      headers: {
        "Authorization": 'Bearer ' + apiJwtHeader + jwt.toString(),
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );

    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }

  Future<Response> patchapi(
    dynamic body,
    String url,
    String jwt,
  ) async {
    DateTime startTime = DateTime.now();

    Response response = await patch(
      Uri.parse(apiUrl + url),
      headers: {
        "Authorization": 'Bearer ' + apiJwtHeader + jwt.toString(),
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );

    DateTime endTime = DateTime.now();
    Duration durationInMilliseconds = endTime.difference(startTime);
    debugPrint('${(durationInMilliseconds.inMilliseconds) / 60}秒');
    return response;
  }
}
