import 'package:comeback/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Basic flutter calculator Application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Calculator Application",
      theme: ThemeData(primaryColor: Color(0xff69d1c5)),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
