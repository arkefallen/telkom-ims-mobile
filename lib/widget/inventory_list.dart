// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:mobile_umkm/controller/databasehelper.dart';
import 'package:mobile_umkm/theme.dart';

class ListInventory extends StatefulWidget {
  ListInventory({Key? key, this.index, this.list}) : super(key: key);
  List? list;
  int? index;

  @override
  State<ListInventory> createState() => _ListInventoryState();
}

class _ListInventoryState extends State<ListInventory> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stok Inventory',
            style: TextStyle(color: Color(0xff4D4D4D)),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xff4D4D4D),
          elevation: 0,
        ),
        body: new FutureBuilder<List>(
          future: databaseHelper.getData("stock-inventori"),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return new ItemInvList(list: snapshot.data);
          },
        ));
  }
}

class ItemInvList extends StatelessWidget {
  List? list;
  ItemInvList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list?.length,
        itemBuilder: (context, i) {
          return new Card(
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
                  style: TextStyle(fontWeight: bold),
                ),
                subtitle: Text("Satuan : " + list![i]['unit_nm']),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(list![i]['quantity']),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
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
