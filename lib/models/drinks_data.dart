import 'package:flutter/material.dart';
import 'package:bar_app/theme/colors.dart' as color;

class CategoryItem {
  int id;
  Color color;
  String title;
  IconData icon;
  CategoryItem(this.id, this.color, this.title, this.icon);
}

class GridListItems {
  int category;
  Color color;
  String title;
  IconData icon;
  GridListItems(this.category, this.color, this.title, this.icon);
}

List<GridListItems> items = [
  GridListItems(1, color.shot1, 'Cheap tequila', Icons.looks_one_outlined),
  GridListItems(
      1, color.shot2, 'Pineapple Upside Down Cake', Icons.looks_one_outlined),
  GridListItems(1, color.shot3, 'Prairie Oyster', Icons.looks_one_outlined),
  GridListItems(1, color.shot4, 'Hot Damn', Icons.looks_one_outlined),
  GridListItems(1, color.shot5, 'B - 52', Icons.looks_one_outlined),
  GridListItems(
      1, color.shot6, 'Alice In Wonderland', Icons.looks_one_outlined),
  GridListItems(1, color.shot7, 'Jolly Rancher', Icons.looks_one_outlined),
  GridListItems(1, color.shot8, 'Mind Eraser', Icons.looks_one_outlined),
  GridListItems(1, color.shot9, 'Motor Oil', Icons.looks_one_outlined),
  GridListItems(1, color.shot10, 'Afterburner', Icons.looks_one_outlined),
  GridListItems(1, color.shot11, 'Irish Car Bomb', Icons.looks_one_outlined),
  GridListItems(1, color.shot12, 'Kamikaze', Icons.looks_one_outlined),
  GridListItems(1, color.shot12, 'Local Kassippu', Icons.looks_one_outlined),
  GridListItems(1, color.shot12, 'Beela Meriyan', Icons.looks_one_outlined),
  GridListItems(1, color.shot12, 'Hot Water', Icons.looks_one_outlined),
  GridListItems(1, color.shot12, 'Cocount Arrack', Icons.looks_one_outlined),
  GridListItems(2, color.shot12, 'Pol Arrack', Icons.looks_one_outlined),
  GridListItems(2, color.shot12, 'Biiwama Weri', Icons.looks_one_outlined),
];

List<CategoryItem> categories = [
  CategoryItem(1, color.shot1, 'category 1', Icons.looks_one_outlined),
  CategoryItem(2, color.shot2, 'category 2', Icons.looks_one_outlined),
  CategoryItem(3, color.shot3, 'category 3', Icons.looks_one_outlined),
  CategoryItem(
      4, color.shot4, 'category long text here 4', Icons.looks_one_outlined),
  CategoryItem(5, color.shot5, 'category 5', Icons.looks_one_outlined),
  CategoryItem(6, color.shot6, 'category 6', Icons.looks_one_outlined),
  CategoryItem(7, color.shot7, 'category 7', Icons.looks_one_outlined),
  CategoryItem(8, color.shot8, 'category 8', Icons.looks_one_outlined),
];
