import 'package:flutter/material.dart';

class EntryProduksi extends StatelessWidget {
  const EntryProduksi({Key? key}) : super(key: key);

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
                  child: Text('2 Desember 2022')),
              Chip(
                label: Text(
                  "Jumlah",
                  style: TextStyle(fontSize: 12.0),
                ),
              )
            ],
          ),
          trailing: Wrap(
            spacing: 5, // space between two icons
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/produksi/edit');
                },
                child: Icon(Icons.mode_edit_outline_outlined),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/produksi/add');
                },
                child: Icon(Icons.delete),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
