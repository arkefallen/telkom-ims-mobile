// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:mobile_umkm/controller/databasehelper.dart';
import 'package:mobile_umkm/pages/Transaksi/add_transaksi_in.dart';
import 'package:mobile_umkm/pages/home_page.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/entry_inventory_item.dart';

class TransaksiMasuk extends StatefulWidget {
  TransaksiMasuk({Key? key, this.index, this.list}) : super(key: key);
  List? list;
  int? index;

  @override
  State<TransaksiMasuk> createState() => _TransaksiMasukState();
}

class _TransaksiMasukState extends State<TransaksiMasuk> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transaksi Barang Masuk",
              style: TextStyle(
                  color: Color(0xff4D4D4D), fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Color(0xff4D4D4D),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new HomePage(),
              ));
            },
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
        ),
        body: FutureBuilder<List>(
          future: databaseHelper
              .getData("transaksi-inventori/transaksi-barang-masuk"),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return ItemIn(list: snapshot.data);
          },
        ));
  }
}

class ItemIn extends StatelessWidget {
  List? list;
  ItemIn({this.list});

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
                  list![i]['item_nm'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(list![i]['unit_nm'])),
                    Chip(
                      label: Text(
                        list![i]['quantity'],
                        style: TextStyle(fontSize: 12.0),
                      ),
                    )
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new AddTransaksiMasuk(list: list, index: i),
                    ));
                  },
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
                ),
              ),
            ),
          );
        });
  }
}
