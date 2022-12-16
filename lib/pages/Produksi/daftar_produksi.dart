import 'package:flutter/material.dart';
import 'package:mobile_umkm/theme.dart';

class DaftarProduksi extends StatefulWidget {
  const DaftarProduksi({Key? key}) : super(key: key);

  @override
  State<DaftarProduksi> createState() => _DaftarProduksiState();
}

class _DaftarProduksiState extends State<DaftarProduksi> {
  Widget EntryBarang() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Produksi',
          style: primaryTextStyle.copyWith(
              color: Color.fromARGB(255, 56, 56, 56),
              fontWeight: FontWeight.w900),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 15, left: 15, top: 0),
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
                    'Brownies',
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
                    'PC Gaming',
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
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(context, '/produksi'),
        icon: Icon(Icons.add),
        label: Text("TAMBAH"),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0)),
      ),
    );
  }
}
