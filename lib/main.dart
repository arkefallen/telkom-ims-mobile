// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/pages/Opname/add_opname.dart';
import 'package:mobile_umkm/pages/Produksi/barang_produksi.dart';
import 'package:mobile_umkm/pages/Produksi/detail_produksi.dart';
import 'package:mobile_umkm/pages/Produksi/edit_item_produksi.dart';
import 'package:mobile_umkm/pages/Produksi/tambah_produksi.dart';
import 'package:mobile_umkm/pages/Transaksi/add_transaksi_in.dart';
import 'package:mobile_umkm/pages/Transaksi/transaksi_in.dart';
import 'package:mobile_umkm/pages/home_page.dart';
import 'package:mobile_umkm/pages/login_page.dart';
import 'package:mobile_umkm/pages/profile_page.dart';
import 'package:mobile_umkm/pages/splash_page.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/inventory_list.dart';

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
        '/view-inventory': (context) => ListInventory(),
        '/entry-inventory': (context) => TransaksiMasuk(),
        '/entry-inventory/add': (context) => AddTransaksiMasuk(),
        '/stock-opname/add': (context) => ProcessStockOpname(),
        '/produksi': (context) => BarangProduksi(),
        '/produksi/add': (context) => AddProduksi(),
        '/produksi/detail': (context) => DetailProduksi(),
        '/produksi/edit': (context) => EditItemProduksi(),
      },
    );
  }
}
