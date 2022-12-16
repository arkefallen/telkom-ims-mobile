import 'package:flutter/material.dart';
import 'package:mobile_umkm/controller/databasehelper.dart';
import 'package:mobile_umkm/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    // if (value != '0') {
    //   Navigator.of(context).push(new MaterialPageRoute(
    //     builder: (BuildContext context) => new HomePage(),
    //   ));
    // }
  }

  @override
  initState() {
    read();
  }

  DatabaseHelper databaseHelper = new DatabaseHelper();
  String msgStatus = '';

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  _onPressed() {
    setState(() {
      if (_emailController.text.trim().toLowerCase().isNotEmpty &&
          _passwordController.text.trim().isNotEmpty) {
        databaseHelper
            .loginData(_emailController.text.trim().toLowerCase(),
                _passwordController.text.trim())
            .whenComplete(() {
          if (databaseHelper.status) {
            _showDialog();
            msgStatus = 'Check email or password';
          } else {
            Navigator.pushReplacementNamed(context, '/home');
          }
        });
      }
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Failed'),
            content: new Text('Check your email or password'),
            actions: <Widget>[
              new RaisedButton(
                child: new Text(
                  'Close',
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

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
                  controller: _emailController,
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
                  controller: _passwordController,
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
                      child: const Text('Login'), onPressed: _onPressed)),
            ],
          )),
    );
  }
}
