import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class TransaksiMasuk extends StatefulWidget {
  const TransaksiMasuk({Key? key}) : super(key: key);

  @override
  State<TransaksiMasuk> createState() => _TransaksiMasukState();
}

class _TransaksiMasukState extends State<TransaksiMasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transaksi Masuk',
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
      body: ListView(
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
                subtitle: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Nama Satuan : Kilogram')),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Jumlah : 20"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add-transaksi-in');
                  },
                  child: Text("Edit"),
                  style: ElevatedButton.styleFrom(
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
                subtitle: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Nama Satuan : Kilogram')),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Jumlah : 20"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add-transaksi-in');
                  },
                  child: Text("Edit"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
