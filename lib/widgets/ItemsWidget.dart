import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.72,
    physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i < 6; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15,top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          child: Column(children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "itemPage");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/$i.png",
                  height: 100,
                  width: 120,
                ),
              ),
            ),
          Padding(padding: EdgeInsets.only(bottom: 5),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Product Title",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "write describtion of broduct",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                ),
                Icon(CupertinoIcons.cart_badge_plus,
                color: Colors.deepOrange,
                  size: 28,

                ),
              ],
            ),
            ),
          ],
          ),
          ),
      ],
    );
  }
}