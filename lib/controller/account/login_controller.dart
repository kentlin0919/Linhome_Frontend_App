import 'package:linhome_frontend_app/import.dart';

class LoginController  {

    LoginController(String username,String password){
      api().post();

      debugPrint(username);
    }
 
}