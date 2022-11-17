// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListAddProduksi extends StatefulWidget {
  // right now it only accepts title, but you can add more
  // arguments to be accepted by this widget
  ListAddProduksi({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ListAddProduksiState createState() => _ListAddProduksiState();
}

class _ListAddProduksiState extends State<ListAddProduksi> {
  // responsible for toggle
  bool _showData = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          // list card containing country name

          // this is the company card which is toggling based upon the bool
          _showData
              ? Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() => _showData = !_showData);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(
                            color: Colors.grey.shade200,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 17, right: 17),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 13, 8, 8),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/icon_item.png',
                              width: 51,
                              height: 51,
                            ),
                            title: Column(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(widget.title,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold))),
                              ],
                            ),
                            trailing: Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 17, bottom: 8),
                                        alignment: Alignment.centerLeft,
                                        child: Text('Jumlah',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '10',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          filled: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 17, bottom: 8),
                                        alignment: Alignment.centerLeft,
                                        child: Text('Satuan',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'BUAH',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          filled: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : GestureDetector(
                  onTap: () {
                    setState(() => _showData = !_showData);
                  },
                  child: Card(
                    margin: EdgeInsets.only(left: 17, right: 17),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 13, 8, 8),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icon_item.png',
                          width: 51,
                          height: 51,
                        ),
                        title: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text(widget.title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ),
                  ),
                ), // else blank
        ]);
  }
}
