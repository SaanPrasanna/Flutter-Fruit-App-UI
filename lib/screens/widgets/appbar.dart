import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar() {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    leading: Icon(
      Icons.menu,
      size: 30,
      color: Colors.black,
    ),
    actions: [
      new Container(
        height: 150.0,
        width: 50.0,
        child: new GestureDetector(
          onTap: () {},
          child: new Stack(
            children: <Widget>[
              new IconButton(
                icon: SvgPicture.asset(
                  "assets/bag.svg",
                  color: Colors.black,
                  width: 30,
                ),
                onPressed: null,
              ),
              new Positioned(
                top: 10,
                right: 8,
                child: new Stack(
                  children: <Widget>[
                    new Icon(Icons.brightness_1,
                        size: 20.0, color: Colors.green[800]),
                    new Positioned(
                        top: 4.0,
                        right: 7.0,
                        child: new Center(
                          child: new Text(
                            "5",
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ],
    bottom: TabBar(
      indicatorColor: Colors.green,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(
          child: Text(
            "Fruits",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Tab(
          child: Text(
            "Vegetables",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Tab(
          child: Text(
            "Seeds",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    ),
  );
}
