import 'package:e_commerce/widgets/HomeBottomBar.dart';
import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';
import '../widgets/CartItemSamples.dart';
import '../widgets/OrderWidget.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[ BoxShadow(
                      color: Colors.orange.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5
                    ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Text("Sub_Total:", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                          Text("\$100:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.7,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Free:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          Text("\$20:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.7,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          Text("-\$10:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Colors.redAccent,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                          ),
                          Text("\$110:", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                OrderWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}