import 'package:flutter/material.dart';

class EntryInventoryItem extends StatelessWidget {
  const EntryInventoryItem({
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
                  alignment: Alignment.centerLeft,
                  child: Text('Nama Satuan : Kilogram')),
              Chip(
                label: Text(
                  "Jumlah",
                  style: TextStyle(fontSize: 12.0),
                ),
              )
            ],
          ),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/entry-inventory/add');
            },
            child: Text("Edit"),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
          ),
        ),
      ),
    );
  }
}
