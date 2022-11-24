import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/entry_produksi.dart';

class DetailProduksi extends StatefulWidget {
  const DetailProduksi({Key? key}) : super(key: key);

  @override
  State<DetailProduksi> createState() => _DetailProduksiState();
}

class _DetailProduksiState extends State<DetailProduksi> {
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
              EntryProduksi(),
              EntryProduksi(),
              EntryProduksi(),
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
                      primary: primaryColor,
                      side: BorderSide(
                          color: Colors.red, width: 1), //<-- SEE HERE
                      minimumSize: Size.fromHeight(50)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Kembali Ke Daftar Produksi",
                    style: TextStyle(color: primaryColor, fontSize: 14),
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
