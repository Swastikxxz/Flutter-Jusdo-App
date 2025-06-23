import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jusdo/pages/Home_page.dart';

void main() async {
  //Initialize the hive
  await Hive.initFlutter();

  //open a box
  var Box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
      ),
    );
  }
}
