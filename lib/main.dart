// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/pages/Transaksi/transaksi_in.dart';
import 'package:mobile_umkm/pages/home_page.dart';
import 'package:mobile_umkm/pages/login_page.dart';
import 'package:mobile_umkm/pages/profile_page.dart';
import 'package:mobile_umkm/pages/splash_page.dart';
import 'package:mobile_umkm/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(primarySwatch: kPrimaryColor),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/transaksi-in': (context) => TransaksiMasuk(),
      },
    );
  }
}
