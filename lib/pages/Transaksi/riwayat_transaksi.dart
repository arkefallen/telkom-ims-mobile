// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_umkm/controller/databasehelper.dart';
import 'package:mobile_umkm/theme.dart';

class RiwayatTransaksi extends StatefulWidget {
  RiwayatTransaksi({Key? key, this.index, this.list}) : super(key: key);
  List? list;
  int? index;

  @override
  State<RiwayatTransaksi> createState() => _RiwayatTransaksiState();
}

class _RiwayatTransaksiState extends State<RiwayatTransaksi> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Riwayat Transaksi',
            style: TextStyle(color: Color(0xff4D4D4D)),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xff4D4D4D),
          elevation: 0,
        ),
        body: FutureBuilder<List>(
          future:
              databaseHelper.getData("transaksi-inventori/riwayat-transaksi"),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return ItemHistory(list: snapshot.data);
          },
        ));
  }
}

class ItemHistory extends StatelessWidget {
  List? list;
  ItemHistory({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list?.length,
        itemBuilder: (context, i) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
              side: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: ListTile(
                leading: Image.asset('assets/icon_item.png'),
                title: Text(
                  list?[i]['item_nm'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Satuan : " + list![i]['unit'])),
                    Chip(
                      label: Text(
                        "Stok awal : " + list![i]['stok_awal'],
                        style: TextStyle(fontSize: 12.0),
                      ),
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 189, 189, 189)),
                    ),
                    Chip(
                      labelStyle: TextStyle(fontSize: 12.0),
                      label: Text("Stok akhir : " + list![i]['stok_akhir']),
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 189, 189, 189)),
                    ),
                  ],
                ),
                trailing: list![i]['trx_tp'] == "In"
                    ? Chip(
                        labelStyle:
                            TextStyle(fontSize: 10.0, color: Colors.white),
                        label: Text(
                          'Barang Masuk',
                        ),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.all(2.0),
                      )
                    : Chip(
                        labelStyle:
                            TextStyle(fontSize: 10.0, color: Colors.white),
                        label: Text(
                          'Barang Keluar',
                        ),
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(2.0),
                      ),
              ),
            ),
          );
        });
  }
}
