import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate UI',
      home: RootPage(),
    );
  }
}
