import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;
import 'package:sizer/sizer.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:bar_app/models/drinks_data.dart';

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
  int _category = 1;

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
        title: Text('Menu', style: TextStyle(fontSize: 12.sp)),
      ),
      // ignore: prefer_const_constructors
      body: Column(children: [
        _getCategoriesGird(context),
        _getDrinksGird(context, _scrollController),
      ]),
    );
  }

  Widget _getDrinksGird(
      BuildContext context, ScrollController scrollControlller) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: isTablet() ? 4 : 2,
        childAspectRatio: (2 / 1),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        //physics:BouncingScrollPhysics(),
        controller: scrollControlller,
        padding: const EdgeInsets.all(10.0),
        children: items
            .where((item) => item.category == _category)
            .map(
              (data) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, route.recipePage),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: data.color,
                      ),
                    ),
                    //color: data.color,
                    child: Column(
                      children: [
                        Icon(
                          data.icon,
                          size: 48,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            data.title,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            //style: const TextStyle(fontSize: 36)
                            style: TextStyle(fontSize: 10.sp),
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
    return GridView.count(
      crossAxisCount: isTablet() ? 4 : 2,
      childAspectRatio: (2 / 1),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      children: categories
          .map(
            (data) => GestureDetector(
                onTap: () => updateDrinksList(data.id),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: data.color,
                  child: AutoSizeText(
                    data.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    //style: const TextStyle(fontSize: 36)
                    style: TextStyle(fontSize: 10.sp),
                  ),
                )),
          )
          .toList(),
    );
  }

  updateDrinksList(int catId) {
    setState(() {
      _category = catId;
    });
  }

  bool isTablet() {
    return 100.w > 400;
  }
}
