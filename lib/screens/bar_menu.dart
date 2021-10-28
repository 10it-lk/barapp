import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;
import 'package:bar_app/theme/colors.dart' as color;
import 'package:sizer/sizer.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';

List<GridListItems> items = [
  GridListItems(color.shot1, 'Cheap tequila', Icons.looks_one_outlined),
  GridListItems(
      color.shot2, 'Pineapple Upside Down Cake', Icons.looks_one_outlined),
  GridListItems(color.shot3, 'Prairie Oyster', Icons.looks_one_outlined),
  GridListItems(color.shot4, 'Hot Damn', Icons.looks_one_outlined),
  GridListItems(color.shot5, 'B - 52', Icons.looks_one_outlined),
  GridListItems(color.shot6, 'Alice In Wonderland', Icons.looks_one_outlined),
  GridListItems(color.shot7, 'Jolly Rancher', Icons.looks_one_outlined),
  GridListItems(color.shot8, 'Mind Eraser', Icons.looks_one_outlined),
  GridListItems(color.shot9, 'Motor Oil', Icons.looks_one_outlined),
  GridListItems(color.shot10, 'Afterburner', Icons.looks_one_outlined),
  GridListItems(color.shot11, 'Irish Car Bomb', Icons.looks_one_outlined),
  GridListItems(color.shot12, 'Kamikaze', Icons.looks_one_outlined),
];

List<GridListItems> categories = [
  GridListItems(color.shot1, 'category 1', Icons.looks_one_outlined),
  GridListItems(color.shot2, 'category 2', Icons.looks_one_outlined),
  GridListItems(color.shot3, 'category 3', Icons.looks_one_outlined),
  GridListItems(color.shot4, 'category 4', Icons.looks_one_outlined),
  GridListItems(color.shot5, 'category 5', Icons.looks_one_outlined),
  GridListItems(color.shot6, 'category 6', Icons.looks_one_outlined),
  GridListItems(color.shot7, 'category 7', Icons.looks_one_outlined),
  GridListItems(color.shot8, 'category 8', Icons.looks_one_outlined),
];

class GridListItems {
  Color color;
  String title;
  IconData icon;
  GridListItems(this.color, this.title, this.icon);
}

// class RandomColorModel {
//   Random random = Random();
//   Color getColor() {
//     return Color.fromARGB(random.nextInt(300), random.nextInt(300),
//         random.nextInt(300), random.nextInt(300));
//   }
// }

// ignore: use_key_in_widget_constructors
class BarMenuPage extends StatefulWidget {
  @override
  State<BarMenuPage> createState() => _BarMenuPageState();
}

class _BarMenuPageState extends State<BarMenuPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
// code for the home page layout
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Menu'),
      ),
      // ignore: prefer_const_constructors
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(children: [
              _getCategoriesGird(context),
              _getDrinksGird(context, _scrollController),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _getDrinksGird(
      BuildContext context, ScrollController scrollControlller) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: (2 / 1),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        //physics:BouncingScrollPhysics(),
        controller: scrollControlller,
        padding: const EdgeInsets.all(10.0),
        children: items
            .map(
              (data) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, route.recipePage),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    //color: data.color,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent)),
                    child: Column(
                      children: [
                        Icon(
                          data.icon,
                          size: 48,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent)),
                            child: AutoSizeText(
                              data.title,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              //style: const TextStyle(fontSize: 36)
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            )
            .toList(),
      ),
    );
  }

  Widget _getCategoriesGird(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: (2 / 1),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        children: categories
            .map(
              (data) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, route.recipePage),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    //color: data.color,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)),
                      child: AutoSizeText(
                        data.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        //style: const TextStyle(fontSize: 36)
                        style: TextStyle(fontSize: 10.sp),
                      ),
                    ),
                  )),
            )
            .toList(),
      ),
    );
  }
}
