import 'package:linhome_frontend_app/import.dart';

class LoginController {
  LoginController(String username, String password) {
    var test = LoginModel().Login(username, password);
    if (test == username) {
      debugPrint(username);
    } else {
      debugPrint(password);
    }
    debugPrint(username);
  }
}
