import 'package:linhome_frontend_app/import.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  bool passwordObscureText = true;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LinHome',
              style: TextStyle(fontSize: 30, color: Colors.black26),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                cursorWidth: 1,
                controller: usernamecontroller,
                decoration: const InputDecoration(hintText: "username"),
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
                obscureText: passwordObscureText,
                decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordObscureText =
                            passwordObscureText ? false : true;
                      });
                    },
                    child: Icon(
                      passwordObscureText
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  clipBehavior: Clip.antiAlias,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  onPressed: () {
                    LoginController(
                        usernamecontroller.text, passwordcontroller.text);
                  },
                  child: const Text(
                    "登入",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  clipBehavior: Clip.antiAlias,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: const Text(
                    "註冊",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
