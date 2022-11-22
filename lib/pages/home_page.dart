import 'package:flutter/material.dart';
import 'package:mobile_umkm/pages/Produksi/daftar_produksi.dart';
import 'package:mobile_umkm/widget/dashboard.dart';
import 'package:mobile_umkm/pages/Opname/opname_page.dart';
import 'package:mobile_umkm/pages/Order/order_page.dart';
import 'package:mobile_umkm/theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    // OrderPage(),
    DaftarProduksi(),
    OpnamePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(
                color: Color.fromARGB(255, 212, 211, 213), width: 1.0))),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_cart),
            //   label: 'Order',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory),
              label: 'Produksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.maps_home_work_outlined),
              label: 'Opname',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
