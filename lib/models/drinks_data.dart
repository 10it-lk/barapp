import 'package:flutter/material.dart';
import 'package:bar_app/theme/colors.dart' as color;

class CategoryItem {
  int id;
  Color color;
  String title;
  IconData icon;
  CategoryItem(this.id, this.color, this.title, this.icon);
}

//todo: rename this class.
class GridListItems {
  int id;
  int category;
  Color color;
  String title;
  IconData icon;
  Recipe recipe;
  GridListItems(
      this.id, this.category, this.color, this.title, this.icon, this.recipe);
}

class Recipe {
  String imagePath;
  List<String> recipeData;
  Recipe(this.imagePath, this.recipeData);
}

List<GridListItems> items = [
  GridListItems(
      1,
      1,
      color.shot1,
      'Cheap tequila',
      Icons.looks_one_outlined,
      Recipe('shot1.jpg', [
        '1. Tequila 50mg',
        '2. Soda water 50mg',
        '3. Dash orange bitters',
        '4. Add some ice'
      ])),
  GridListItems(
      2,
      1,
      color.shot2,
      'Pineapple Upside Down Cake',
      Icons.looks_one_outlined,
      Recipe('shot2.jpg', [
        '1. White Rum 50mg',
        '2. Pineapple juice 50mg',
        '3. lemons bitter or what is this crap',
        '4. Add some ice',
        '5. Any more to add? add some hot pepper juice 50mg'
      ])),
  GridListItems(
      3,
      1,
      color.shot3,
      'Prairie Oyster',
      Icons.looks_one_outlined,
      Recipe('shot3.jpg', [
        '1. Tequila 50mg',
        '2. Water 50mg',
        '3. Dash orange bitters',
        '4. Add some ice'
      ])),
  GridListItems(4, 1, color.shot4, 'Hot Damn', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(5, 1, color.shot5, 'B - 52', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(
      6,
      1,
      color.shot6,
      'Alice In Wonderland',
      Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(6, 1, color.shot7, 'Jolly Rancher', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(7, 1, color.shot8, 'Mind Eraser', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(8, 1, color.shot9, 'Motor Oil', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(9, 1, color.shot10, 'Afterburner', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(10, 1, color.shot11, 'Irish Car Bomb', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(11, 1, color.shot12, 'Kamikaze', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(12, 1, color.shot12, 'Local Kassippu', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(13, 1, color.shot12, 'Beela Meriyan', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(14, 1, color.shot12, 'Hot Water', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(
      15,
      1,
      color.shot12,
      'Coconunt Arrack',
      Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(16, 2, color.shot12, 'Pol Arrack', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(17, 2, color.shot12, 'Biwwama Weri', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Tequila 50mg', '2. Water 50mg'])),
  GridListItems(18, 2, color.shot12, 'Pol Ra', Icons.looks_one_outlined,
      Recipe('shot1.jpg', ['1. Toddy 50mg', '2. Water 50mg'])),
];

List<CategoryItem> categories = [
  CategoryItem(99, Colors.white10, 'All', Icons.looks_one_outlined),
  CategoryItem(1, color.shot1, 'Category 1', Icons.looks_one_outlined),
  CategoryItem(2, color.shot2, 'category 2', Icons.looks_one_outlined),
  CategoryItem(3, color.shot3, 'category 3', Icons.looks_one_outlined),
  CategoryItem(
      4, color.shot4, 'category long text here 4', Icons.looks_one_outlined),
  CategoryItem(5, color.shot5, 'category 5', Icons.looks_one_outlined),
  CategoryItem(6, color.shot6, 'category 6', Icons.looks_one_outlined),
  CategoryItem(7, color.shot7, 'category 7', Icons.looks_one_outlined),
];
