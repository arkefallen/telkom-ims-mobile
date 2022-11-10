import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class ListInventory extends StatefulWidget {
  const ListInventory({Key? key}) : super(key: key);

  @override
  State<ListInventory> createState() => _ListInventoryState();
}

class _ListInventoryState extends State<ListInventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stok Inventory',
          style: TextStyle(color: Color(0xff4D4D4D)),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            Card(
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
                    style: TextStyle(fontWeight: bold),
                  ),
                  subtitle: Text('Kilogram'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Jumlah : 20"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              ),
            ),
            Card(
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
                    style: TextStyle(fontWeight: bold),
                  ),
                  subtitle: Text('Kilogram'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text("Jumlah : 20"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
