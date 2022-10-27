import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.only(right: 15, left: 15, top: 40),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'Stock Opname',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('Penerimaan Barang'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  }
                ),
                ElevatedButton(
                  child: const Text('Retur Barang'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  }
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Daftar Stock Opname',
                style: primaryTextStyle.copyWith(
                    fontSize: 20, color: Colors.black),
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
                    title: Text('Nama Produk'),
                    subtitle: Text('Stok masuk : 6\nStok Keluar : 2'),
                    trailing: OutlinedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        "Tersedia 20",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    )),
              ),
            ),
            SizedBox(height: 6),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
                side: BorderSide(
                  color: Colors.grey.shade200,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: ListTile(
                    leading: Image.asset('assets/icon_item.png'),
                    title: Text('Nama Produk'),
                    subtitle: Text('Stok masuk : 6\nStok Keluar : 2'),
                    trailing: OutlinedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        "Tersedia 20",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
