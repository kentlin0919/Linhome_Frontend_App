import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(hintText: "使用者名稱"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "電子郵件"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "輸入密碼"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "確認密碼"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue)),
                          onPressed: () {},
                          child: const Text(
                            '送出',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
