// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/category_menu_item.dart';
import 'package:mobile_umkm/widget/latest_transaction_item.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> iconMenus = [
    'assets/view_inventories.png',
    'assets/entry_inventories.png',
    'assets/exit_inventories.png',
    'assets/transfer_inventories.png',
    'assets/convert_inventories.png',
    'assets/alert_inventories.png',
    'assets/check_inventories.png',
    'assets/history_inventories.png',
  ];

  List<String> titleMenus = [
    'Lihat Stok',
    'Barang Masuk',
    'Barang Keluar',
    'Transfer Barang',
    'Konversi Barang',
    'Stock Alert',
    'Penyesuaian Stok',
    'Riwayat Transaksi',
  ];

  List<String> routeMenus = [
    '/view-inventory',
    '/entry-inventory',
    '/view-inventory',
    '/view-inventory',
    '/view-inventory',
    '/view-inventory',
    '/view-inventory',
    '/view-inventory',
  ];

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: Icon(Icons.person))
        ],
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
      body: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(children: [
            Text(
              "Menu",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            GridView.builder(
                itemCount: 8,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: ((context, index) {
                  return CategoryMenuItem(
                    iconCategory: iconMenus[index],
                    titleCategory: titleMenus[index],
                    routePage: routeMenus[index],
                  );
                })),
            SizedBox(height: 30.0),
            Text(
              "Transaksi Terbaru",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Column(
              children: [LatestTransactionItem(), LatestTransactionItem()],
            )
          ])),
      backgroundColor: Colors.white,
    );
  }
}
