import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/models/fruit_model.dart';
import 'package:palette_generator/palette_generator.dart';

Widget card(FruitModel fruitModel, int i, List<PaletteColor> colors) {
  return new Container(
    // margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: colors.isNotEmpty ? colors[i].color : Colors.grey[300],
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(25.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            //When user click the add button
            onTap: () => print("test Index $i"),
            child: Container(
              width: 40,
              height: 50,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white70,
                borderRadius:
                    new BorderRadius.only(bottomLeft: Radius.circular(10)),
              ),
              child: Icon(Icons.add),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 27,
          child: Container(
            height: 110,
            width: 110,
            child: Hero(
              tag: fruitModel,
              child: Image.asset(fruitModel.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  fruitModel.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 100,
                child: Text(
                  "Fresh fruits",
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "\$ ${fruitModel.price}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text("Per Qty"),
                      ),
                    ],
                  ),
                  // SizedBox(width: 20),
                  Container(
                    child: Text("View Detials"),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
