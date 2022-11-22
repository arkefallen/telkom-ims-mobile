import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class EditItemProduksi extends StatefulWidget {
  const EditItemProduksi({Key? key}) : super(key: key);

  @override
  State<EditItemProduksi> createState() => _EditItemProduksiState();
}

class _EditItemProduksiState extends State<EditItemProduksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Item",
            style: TextStyle(
                color: Color.fromARGB(255, 77, 76, 76),
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: ListView(
          children: [
            FittedBox(
                fit: BoxFit.fitWidth,
                child: Container(
                    height: 40,
                    child: Text(
                      "Telur",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ))),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jumlah',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
