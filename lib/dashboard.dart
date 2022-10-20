// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(22),
            height: 330,
            width: 309,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daftar Stok Inventori",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Card(
                  child: ListTile(
                      leading: FlutterLogo(size: 36.0),
                      title: Text('Nama Produk'),
                      subtitle: Text('Stok masuk : 6\nStok Keluar : 2'),
                      trailing: OutlinedButton(
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text(
                          "Tersedia 20",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      )),
                ),
                Card(
                  child: ListTile(
                      leading: FlutterLogo(size: 36.0),
                      title: Text('Nama Produk'),
                      subtitle: Text('Stok masuk : 6\nStok Keluar : 2'),
                      trailing: OutlinedButton(
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text(
                          "Tersedia 20",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Tambah Produk Inventori",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
