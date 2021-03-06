import 'package:bar_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:bar_app/routes/route.dart' as route;
import 'package:bar_app/screens/bar_menu.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Bar App',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     onGenerateRoute: route.controller,
  //     home: BarMenuPage(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Bar App',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          onGenerateRoute: route.controller,
          home: BarMenuPage(),
        );
      },
    );
  }
}
