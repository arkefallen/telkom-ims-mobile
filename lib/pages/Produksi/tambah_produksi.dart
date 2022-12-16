import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/list_add_produksi.dart';

class AddProduksi extends StatefulWidget {
  const AddProduksi({Key? key}) : super(key: key);

  @override
  State<AddProduksi> createState() => _AddProduksiState();
}

class _AddProduksiState extends State<AddProduksi> {
  Widget ListBarang() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                'tepung',
                'telur',
                'minyak',
                'gula',
              ].map((country) {
                // returning the CardWidget passing only title
                return ListAddProduksi(title: country);
              }).toList()),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Produksi",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 19),
              alignment: Alignment.centerLeft,
              child: Text("Masukan Jumlah Produksi tiap Item",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Expanded(child: ListBarang()),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: primaryColor,
                  primary: Colors.white,
                  side: BorderSide(color: Colors.red, width: 1),
                  minimumSize: Size.fromHeight(50) //<-- SEE HERE
                  ),
              onPressed: () {
                Navigator.pushNamed(context, '/produksi/detail');
              },
              child: Text(
                "SIMPAN",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
        // child: ListView(
        //     children: [
        //   'Markisa App',
        //   'HR App',
        //   'Aplikasi Kasir',
        //   'Web Perpustakaan',
        //   'Game Rpg'
        // ].map((country) {
        //   // returning the CardWidget passing only title
        //   return ListAddProduksi(title: country);
        // }).toList()),
      ),
    );
  }
}
