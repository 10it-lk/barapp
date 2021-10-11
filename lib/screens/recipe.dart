import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;

// ignore: use_key_in_widget_constructors
class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// code for the home page layout
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Recipe Page'),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        // code for the button in the home page
        // ignore: prefer_const_constructors
        child: ElevatedButton(
          // ignore: prefer_const_constructors
          child: Text('Go to menu'),
          onPressed: () => Navigator.pushNamed(context, route.menuPage),
        ),
      ),
    );
  }
}
