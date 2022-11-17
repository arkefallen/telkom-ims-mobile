import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class EditItemProduksi extends StatefulWidget {
  const EditItemProduksi({Key? key}) : super(key: key);

  @override
  State<EditItemProduksi> createState() => _EditItemProduksiState();
}

class _EditItemProduksiState extends State<EditItemProduksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barang Produksi",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  primary: Colors.white,
                  //<-- SEE HERE
                ),
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Telur",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jumlah',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
