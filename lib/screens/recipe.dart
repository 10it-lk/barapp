import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bar_app/models/drinks_data.dart';

// ignore: use_key_in_widget_constructors
class RecipePage extends StatelessWidget {
  var itemId;

  RecipePage(this.itemId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get recipe to show
    GridListItems recipe = items.firstWhere((item) => item.id == itemId);
    CategoryItem category =
        categories.firstWhere((cat) => cat.id == recipe.category);
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Recipe Page',
            style: TextStyle(fontSize: 8.sp)), //todo: get font size from theme
      ),
      // ignore: prefer_const_constructors
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: recipe.color,
                  radius: 10.sp,
                  child: AutoSizeText(
                    '${recipe.id}',
                    style: TextStyle(fontSize: 10.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: ListTile(
                  title: AutoSizeText(
                    recipe.title,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  subtitle: Text(
                    category.title,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 10.sp),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 5.sp,
            thickness: 1.sp,
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child:
                      Image.asset("assets/images/${recipe.recipe.imagePath}"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.shade300,
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: recipe.recipe.recipeData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return ListTile(
                          title: Text(recipe.recipe.recipeData[index],
                              style: TextStyle(fontSize: 8.sp)),
                        );
                      }),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
