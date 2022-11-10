import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/entry_inventory_item.dart';

class TransaksiMasuk extends StatefulWidget {
  const TransaksiMasuk({Key? key}) : super(key: key);

  @override
  State<TransaksiMasuk> createState() => _TransaksiMasukState();
}

class _TransaksiMasukState extends State<TransaksiMasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaksi Barang Masuk",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          EntryInventoryItem(),
          EntryInventoryItem(),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
