import 'package:flutter/material.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            'Gula',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.centerLeft, child: Text('Nama Satuan')),
              Chip(
                label: Text(
                  "Stok Awal",
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
                label: Text("Stok Akhir"),
                backgroundColor: Colors.transparent,
                side: BorderSide(
                    width: 1.0,
                    style: BorderStyle.solid,
                    color: Color.fromARGB(255, 189, 189, 189)),
              ),
            ],
          ),
          trailing: Chip(
            labelStyle: TextStyle(fontSize: 10.0, color: Colors.white),
            label: Text(
              "Transaksi Masuk",
            ),
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(2.0),
          ),
        ),
      ),
    );
  }
}
