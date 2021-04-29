import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: SingleChildScrollView(
            child: Column(
          children: [
            //navbar
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Good morning Akila!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(Icons.shopping_cart)
            ]),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings)
                ],
              ),
            ),
          ],
        )));
  }
}
