import 'package:flutter/material.dart';
import 'package:mobile_umkm/pages/Opname/add_opname.dart';
import 'package:mobile_umkm/theme.dart';
import 'package:mobile_umkm/widget/stock_opname_item.dart';

class OpnamePage extends StatefulWidget {
  const OpnamePage({Key? key}) : super(key: key);

  @override
  State<OpnamePage> createState() => _OpnamePageState();
}

class _OpnamePageState extends State<OpnamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stock Opname',
          style: primaryTextStyle.copyWith(
              color: Color.fromARGB(255, 56, 56, 56),
              fontWeight: FontWeight.w900),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 15, left: 15, top: 0),
        child: ListView(
          children: [StockOpnameItem(), SizedBox(height: 5), StockOpnameItem()],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(context, '/stock-opname/add'),
        icon: Icon(Icons.add),
        label: Text("TAMBAH"),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0)),
      ),
    );
  }
}
