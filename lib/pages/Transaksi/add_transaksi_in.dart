// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:mobile_umkm/controller/databasehelper.dart';
import 'package:mobile_umkm/pages/Transaksi/transaksi_in.dart';
import 'package:mobile_umkm/theme.dart';

class AddTransaksiMasuk extends StatefulWidget {
  List? list;
  int index;
  AddTransaksiMasuk({required this.index, this.list});

  @override
  State<AddTransaksiMasuk> createState() => _AddTransaksiMasukState();
}

class _AddTransaksiMasukState extends State<AddTransaksiMasuk> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  late TextEditingController _namaInv;
  late TextEditingController _jumlahIn;
  late TextEditingController _jumlahStok;

  @override
  void initState() {
    _namaInv =
        new TextEditingController(text: widget.list![widget.index]['item_nm']);
    _jumlahIn = new TextEditingController(
        text: widget.list![widget.index]['jumlah_trx']);
    _jumlahStok = new TextEditingController(
        text: widget.list![widget.index]['quantity'] +
            ' ' +
            widget.list![widget.index]['unit_nm']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Barang Masuk',
          style: TextStyle(color: Color(0xff4D4D4D)),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff4D4D4D),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 17, bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text('Nama Inventori',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.grey.withOpacity(0.53))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 1),
                child: TextField(
                  controller: _namaInv,
                  decoration: InputDecoration(
                    enabled: false,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 17, bottom: 8),
                                alignment: Alignment.centerLeft,
                                child: Text('Jumlah Transaksi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ),
                              TextField(
                                controller: _jumlahIn,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 17, bottom: 8),
                                alignment: Alignment.centerLeft,
                                child: Text('Stock Inventory',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ),
                              TextField(
                                controller: _jumlahStok,
                                decoration: InputDecoration(
                                  enabled: false,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  filled: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    "Stok Setelah Transaksi : 15 ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 189, 189, 189)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Color.fromARGB(255, 59, 59, 59))),
            SizedBox(height: 15.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: primaryColor,
                  side: BorderSide(color: Colors.red, width: 1),
                  minimumSize: Size.fromHeight(50) //<-- SEE HERE
                  ),
              onPressed: () {
                // Respond to button press
              },
              child: Text(
                "RESET",
                style: TextStyle(color: primaryColor, fontSize: 14),
              ),
            ),
            SizedBox(height: 8.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: primaryColor,
                  primary: Colors.white,
                  side: BorderSide(color: Colors.red, width: 1),
                  minimumSize: Size.fromHeight(50) //<-- SEE HERE
                  ),
              onPressed: () {
                databaseHelper.editTransaksi(
                    "transaksi-barang-masuk",
                    widget.list![widget.index]['positemunit_cd'],
                    _jumlahIn.text.trim());
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new TransaksiMasuk(),
                ));
              },
              child: Text(
                "SIMPAN",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
