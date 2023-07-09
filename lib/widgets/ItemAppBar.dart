import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemAppBar extends StatelessWidget{

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
            Navigator.pop(context);
    },
            child: Icon(Icons.arrow_back,
            size: 30,
              color: Colors.red,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Product",
          style: TextStyle(
            fontSize:23 ,
            fontWeight:FontWeight.bold ,
            color: Colors.black,
          ),
          ),
          ),
        Spacer(),
    Icon(CupertinoIcons.cart_fill,
    color: Colors.deepOrange,
    size: 30,
    ),
        ],
      ),
    );
  }

}