import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view/common/theme.dart';

import 'screens/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits App',
      theme:themeData(context),
      home: DefaultTabController(
        length: 3,
        child: MyHomePage(),
      ),
    );
  }
}