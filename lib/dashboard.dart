// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat datang,",
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 3.0),
            Text(
              "Muhammad Fatih !",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/view_inventories.png'),
                    Text(
                      "Lihat Stok",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/entry_inventories.png'),
                    Text(
                      "Barang Masuk",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/exit_inventories.png'),
                    Text(
                      "Barang Keluar",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/transfer_inventories.png'),
                    Text(
                      "Transfer Barang",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/convert_inventories.png'),
                    Text(
                      "Konversi Barang",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/alert_inventories.png'),
                    Text(
                      "Stock Alert",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 212, 211, 213),
                        style: BorderStyle.solid,
                        width: 1.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/check_inventories.png'),
                    Text(
                      "Penyesuaian Stok",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}