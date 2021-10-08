import 'package:flutter/material.dart';
// importing our pages into our route.dart
import 'package:bar_app/screens/bar_menu.dart';
import 'package:bar_app/screens/recipe.dart';

// variable for our route names
const String menuPage = 'menu';
const String recipePage = 'recipe';

// controller function with switch statement to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case menuPage:
      return MaterialPageRoute(builder: (context) => BarMenuPage());
    case recipePage:
      return MaterialPageRoute(builder: (context) => RecipePage());
    default:
      throw ('this route name does not exist');
  }
}
