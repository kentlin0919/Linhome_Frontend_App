import 'package:linhome_frontend_app/import.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                cursorWidth: 1,
                controller: usernamecontroller,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                cursorWidth: 1,
                controller: passwordcontroller,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                clipBehavior: Clip.antiAlias,
                onPressed: () {
                  LoginController(usernamecontroller.text, passwordcontroller.text);
                },
                child: const Text('登入'))
          ],
        ),
      ),
    );
  }
}
