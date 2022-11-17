import 'package:flutter/material.dart';

class EditOpnameInventory extends StatelessWidget {
  const EditOpnameInventory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _stokRealController = TextEditingController();
    TextEditingController _stokSistemController = TextEditingController();

    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 224, 224, 224),
                  spreadRadius: 1.0,
                  blurRadius: 20.0,
                  offset: Offset(0, -1.0))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text("EDIT"),
            style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Edit Inventory"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Color(0xff4D4D4D),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    child: Text(
                      "Nama Inventori: Dobel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 47, 47),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                "Stok Real",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 15.0),
              TextField(
                controller: _stokRealController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              SizedBox(height: 15.0),
              Text(
                "Stok Sistem",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 15.0),
              TextField(
                controller: _stokSistemController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
