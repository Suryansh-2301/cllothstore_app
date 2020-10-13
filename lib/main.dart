import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(ClothStore());
}

class ClothStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: HomeScreen(),
    );
  }
}


