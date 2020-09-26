import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';
import 'package:pokedex/screens/Home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PodeDex',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(context),
      home: HomeScreen(),
    );
  }

  ThemeData buildThemeData(BuildContext context) {
    return ThemeData(
      textTheme: Theme.of(context)
          .textTheme
          .apply(bodyColor: ConstTextColor, fontFamily: 'sf-pro'),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
      ),
    );
  }
}
