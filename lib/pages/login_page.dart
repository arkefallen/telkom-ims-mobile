import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 68, left: 15, right: 15),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/logo_brin.png')),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'HESXYS - UMKM',
                    style: TextStyle(fontSize: 24),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Masuk Menggunakan akun',
                    style: TextStyle(fontSize: 12),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                  )),
            ],
          )),
    );
  }
}
