import 'package:flutter/material.dart';

class CategoryMenuItem extends StatelessWidget {
  String iconCategory = '';
  String titleCategory = '';

  CategoryMenuItem({required this.iconCategory, required this.titleCategory});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            border: Border.all(
                color: Color.fromARGB(255, 212, 211, 213),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconCategory),
            SizedBox(height: 8.0),
            Text(
              titleCategory,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
