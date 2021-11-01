import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// code for the home page layout
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Recipe Page',
            style: TextStyle(fontSize: 12.sp)), //todo: get font size from theme
      ),
      // ignore: prefer_const_constructors
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle, size: 48),
              title: const AutoSizeText(
                'Pol Arrak Mix',
                style: TextStyle(fontSize: 36),
              ),
              subtitle: Text(
                'category Local',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 24),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                      ),
                      child: Center(
                        child: Image.asset('images/shot1.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.purple,
                    //   ),
                    // ),
                    child:
                        Text('Recipe Page', style: TextStyle(fontSize: 12.sp)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
