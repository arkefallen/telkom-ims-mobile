// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/logo_brin.png'))),
        ),
      ),
    );
  }
}
