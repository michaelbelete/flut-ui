import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Good morning Akila!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Icon(Icons.shopping_cart)
          ])
        ])));
  }
}
