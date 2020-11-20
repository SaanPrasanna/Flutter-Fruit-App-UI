import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grid_view/screens/pages/detailspage.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../models/fruit_model.dart';
import '../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> img = [];
  List<PaletteColor> colors;

  @override
  void initState() {
    super.initState();
    colors = [];
    createArray();
    _updatePalette();
  }

  void createArray() {
    for (var i = 0; i < fruitsData.length; i++) {
      img.add(fruitsData[i].image);
    }
  }

  void _updatePalette() async {
    for (String image in img) {
      final PaletteGenerator generator =
          await PaletteGenerator.fromImageProvider(AssetImage(image),
              size: Size(200, 100));
      colors.add(generator.lightMutedColor != null
          ? generator.lightMutedColor
          : PaletteColor(Colors.orange[200], 2));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: TabBarView(
        children: [
          Stack(
            children: [
              //Search Bar
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 21.0,
                  ),
                  decoration: new InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[500]),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[500]),
                      hintText: "Search here",
                      fillColor: Colors.white70,
                      contentPadding: EdgeInsets.only(left: 30, right: 30)),
                ),
              ),
              //list Grid view
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12, top: 80),
                child: new StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  itemCount: fruitsData.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      //When user click the card
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  color: colors.isNotEmpty
                                      ? colors[i].color
                                      : Colors.grey[300],
                                  fruitModel: fruitsData[i],
                                )));
                      },
                      child: card(fruitsData[i], i, colors),
                    );
                  },
                  staggeredTileBuilder: (i) {
                    return new StaggeredTile.count(1, i.isEven ? 1.8 : 1.6);
                  },
                ),
              ),
            ],
          ),
          Text("Empty"),
          Text("Empty")
        ],
      ),
    );
  }
}
