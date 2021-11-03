import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;
import 'package:sizer/sizer.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:bar_app/models/drinks_data.dart';

// ignore: use_key_in_widget_constructors
class BarMenuPage extends StatefulWidget {
  @override
  State<BarMenuPage> createState() => _BarMenuPageState();
}

class _BarMenuPageState extends State<BarMenuPage> {
  late ScrollController _scrollController;
  List<GridListItems> _filteredItems = items;

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
        title: Text('Menu', style: TextStyle(fontSize: 8.sp)),
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
        children: _filteredItems
            .map(
              (data) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, route.recipePage,
                      arguments: data.id),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: data.color,
                      ),
                    ),
                    //color: data.color,
                    child: Column(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: data.color,
                            radius: 11.sp,
                            child: AutoSizeText(
                              '${data.id}',
                              style: TextStyle(fontSize: 10.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            data.title,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            //style: const TextStyle(fontSize: 36)
                            style: TextStyle(fontSize: 12.sp),
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
                  alignment: Alignment.center,
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
      if (catId == 99) {
        _filteredItems = items;
      } else {
        _filteredItems = items.where((item) => item.category == catId).toList();
      }
    });
  }

  bool isTablet() {
    return 100.w > 400;
  }
}
