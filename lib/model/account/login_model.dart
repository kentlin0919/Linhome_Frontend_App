import 'package:linhome_frontend_app/import.dart';

class LoginModel {
  Login(String username, String password) {
    var Body;
    var url;
    var jwt;
    return api().postapi(
      Body,
      url,
      jwt,
    );
  }
}
