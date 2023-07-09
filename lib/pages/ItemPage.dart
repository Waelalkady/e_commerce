import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/ItemAppBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemBottomBar.dart';

class ItemPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("images/1.png", height:300 ,),
          ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Title", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ],
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      maxRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding:  EdgeInsets.symmetric(horizontal: 2),
                      itemBuilder: (context, _) =>Icon(
                        Icons.star,
                      color: Colors.deepOrange,
                      ),
                      onRatingUpdate: (index){},
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]
                          ),
                          child: Icon(CupertinoIcons.minus,
                            size: 18,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("02",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),

                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ]
                          ),
                          child: Icon(CupertinoIcons.plus,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 30),
                child: Text("A simple yet fully customizable ratingbar"
                    " for flutter which also include a rating bar indicator, "
                    "supporting any fraction of ratingA simple yet fully customizable"
                    " ratingbar for flutter which also include a rating bar indicator"
                    ", supporting any fraction of rating..",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                ),
              ],
            ),
          ),
        ),
        ],
      ),
      bottomNavigationBar: ItemBottomBar(),
    );
  }

}