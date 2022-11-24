// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/produk_check.dart';

class BarangProduksi extends StatefulWidget {
  const BarangProduksi({Key? key}) : super(key: key);

  @override
  State<BarangProduksi> createState() => _BarangProduksiState();
}

class _BarangProduksiState extends State<BarangProduksi> {
  Widget ListBarang() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 7),
                child: Text("Pilih bahan produksi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              SizedBox(
                height: 16,
              ),
              ProdukCheck(),
              ProdukCheck(),
              ProdukCheck(),
              ProdukCheck(),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: primaryColor,
                      primary: Colors.white,
                      side: BorderSide(
                          color: Colors.red, width: 1), //<-- SEE HERE
                      minimumSize: Size.fromHeight(50)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/produksi/add');
                  },
                  child: Text(
                    "SIMPAN",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

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
        padding: EdgeInsets.all(15),
        child: Container(
          child: ListBarang(),
        ),
      ),
    );
  }
}
