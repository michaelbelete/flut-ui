import 'package:flutter/material.dart';
import 'package:mike/mock.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: SingleChildScrollView(
            child: Column(
          children: [
            //navbar
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Good morning Akila!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Icon(Icons.shopping_cart)
            ]),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(
                vertical: 40,
              ),
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.search),
                  Text('Search food'),
                ],
              ),
            ),

            // list view search
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(color: Colors.white, boxShadow: shadowList, borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            foodCategories[index]['coverPicture'],
                            height: 50,
                            width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(foodCategories[index]['foodName'])
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )));
  }
}
