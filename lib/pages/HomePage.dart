import 'package:e_commerce/widgets/HomeAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/DealsWidget.dart';
import '../widgets/HomeBottomBar.dart';
import '../widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 5),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                     Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 100,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Serch here...",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.camera_alt,
                    size: 25,
                      color: Colors.orange,
                    ),
                  ],
                ),
              )
            ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15,left: 10),
            child: Text("Best Food",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
            ),
          ),
          DealsWidget(),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "New Products",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ) ,
            ),
          ),
          ItemsWidget(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}