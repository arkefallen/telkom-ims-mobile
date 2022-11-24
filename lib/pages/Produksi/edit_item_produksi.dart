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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Center(
                  child: Text(
                    "Telur",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
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
