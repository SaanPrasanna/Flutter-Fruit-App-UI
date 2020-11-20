import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/fruit_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key, @required this.fruitModel, @required this.color})
      : super(key: key);
  final FruitModel fruitModel;
  final Color color;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.color,
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
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
                          top: 9,
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
                ],
              ),
              Container(
                width: 250,
                child: Hero(
                  transitionOnUserGestures: true,
                  tag: widget.fruitModel,
                  child: Image.asset(widget.fruitModel.image),
                ),
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                      child: Container(
                        color: Colors.white.withOpacity(0.3),
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.fruitModel.name} - Medium",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${widget.fruitModel.count.toString()} pc (500g - 700g)",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.green),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: Text("${widget.fruitModel.description}"),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      FlatButton(
                                        minWidth: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            side: BorderSide(
                                                color: Colors.black)),
                                        onPressed: () {},
                                        child: Icon(Icons.add),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "$count",
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      FlatButton(
                                        minWidth: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            side: BorderSide(
                                                color: Colors.black)),
                                        onPressed: () {},
                                        child: Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$ ${widget.fruitModel.price.toString()}",
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "You save: 20%",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  FlatButton(
                                    height: 60,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.bookmark_border,
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.green)),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.green)),
                                      onPressed: () {},
                                      color: Colors.green,
                                      textColor: Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 60,
                                          ),
                                          SvgPicture.asset(
                                            "assets/bag.svg",
                                            height: 30,
                                            width: 30,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Bag It",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    // child: ButtonTheme(

                                    //   buttonColor: Colors.green,
                                    //   height: 60.0,
                                    //   child: RaisedButton(
                                    //     onPressed: () {},
                                    //     child: Row(
                                    //       mainAxisAlignment: MainAxisAlignment.center,
                                    //       children: [
                                    //         SvgPicture.asset(
                                    //           "assets/bag.svg",
                                    //           width: 30,
                                    //           color: Colors.white,
                                    //         ),
                                    //         SizedBox(width: 10.0,),
                                    //         Text(
                                    //           "Bag It",
                                    //           style: TextStyle(
                                    //             fontSize: 25,
                                    //             fontWeight: FontWeight.bold,
                                    //             color: Colors.white,
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        // child: ,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
