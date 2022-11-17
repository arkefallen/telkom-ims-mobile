import 'package:flutter/material.dart';

class ListItemStockOpname extends StatelessWidget {
  const ListItemStockOpname({
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
          title: Row(
            children: [
              Text(
                'Nama Inventory',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8.0),
              Chip(
                labelPadding: EdgeInsets.fromLTRB(3, -4, 3, -4),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                label: Text("Satuan"),
                labelStyle: TextStyle(fontSize: 10.0),
                side: BorderSide(
                    color: Color.fromARGB(255, 73, 73, 73),
                    width: 1.0,
                    style: BorderStyle.solid),
                backgroundColor: Colors.transparent,
              )
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
            child: Row(
              children: [
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(3, -3, 3, -3),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  label: Text(
                    "Stok Sistem",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                SizedBox(width: 8.0),
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(3, -3, 3, -3),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  label: Text(
                    "Stok Sistem",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ],
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stock-opname/edit');
            },
            child: Text(
              "Edit",
              style: TextStyle(fontSize: 12.0),
            ),
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
