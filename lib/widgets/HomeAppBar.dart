import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.sort,
          size: 30,
            color: Colors.orange,
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("e_commerce",style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
          ),
          ),
          Spacer(),
          Icon(Icons.notifications,
          size: 30,
          color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}