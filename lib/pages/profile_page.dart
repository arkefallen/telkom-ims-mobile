// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              color: primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset('assets/icon_user.png'),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      children: [
                        Text(
                          'User Umkm',
                          style: primaryTextStyle.copyWith(
                              fontSize: 20, fontWeight: bold),
                        ),
                        Text('Pemilik Umkm'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextButton(
                child: Row(
                  children: [
                    Image.asset('assets/icon_edit.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Edit Profile".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green)))),
                onPressed: () => null),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextButton(
                child: Row(
                  children: [
                    Image.asset('assets/icon_key.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ganti Password".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green)))),
                onPressed: () => null),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: TextButton(
                child: Text("Log Out".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black)))),
                onPressed: () => null),
          ),
        ],
      ),
    );
  }
}
