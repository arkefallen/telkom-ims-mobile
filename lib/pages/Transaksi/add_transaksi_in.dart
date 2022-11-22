// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class AddTransaksiMasuk extends StatefulWidget {
  const AddTransaksiMasuk({Key? key}) : super(key: key);

  @override
  State<AddTransaksiMasuk> createState() => _AddTransaksiMasukState();
}

class _AddTransaksiMasukState extends State<AddTransaksiMasuk> {
  String dropdownvalue = 'Vga rtx 2080';
  bool isLainya = false;

  var items = [
    'Vga rtx 2080',
    'Ram 8GB ddr4',
    'Ryzen 5 5500U',
    'PSU 500W',
    'Monitor 144hz',
  ];
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
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.grey.withOpacity(0.53))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButton(
                  underline: SizedBox(),
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                      // if (newValue == 'Lainya') {
                      //   isLainya = true;
                      // }
                    });
                  },
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
                                child: Text('Stok Inventori',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '10 SET',
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
                                child: Text('Transaksi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '12',
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
                // Respond to button press
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
