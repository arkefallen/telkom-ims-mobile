import 'package:flutter/material.dart';

class StockOpnameItem extends StatelessWidget {
  const StockOpnameItem({
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
                  "Status",
                ),
                labelStyle: TextStyle(fontSize: 12.0, color: Colors.white),
                backgroundColor: Colors.green,
              )
            ],
          ),
          trailing: OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stock-opname/add');
            },
            child: Text("Edit"),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Color.fromARGB(255, 92, 91, 91),
                      width: 2.0,
                      style: BorderStyle.solid)),
            ),
          ),
        ),
      ),
    );
  }
}
