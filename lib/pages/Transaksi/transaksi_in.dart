// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/inventory_list.dart';

class TransaksiMasuk extends StatefulWidget {
  const TransaksiMasuk({Key? key}) : super(key: key);

  @override
  State<TransaksiMasuk> createState() => _TransaksiMasukState();
}

class _TransaksiMasukState extends State<TransaksiMasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
          children: [
        'Markisa App',
        'HR App',
        'Aplikasi Kasir',
        'Web Perpustakaan',
        'Game Rpg'
      ].map((country) {
        // returning the CardWidget passing only title
        return ListInventory(title: country);
      }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
