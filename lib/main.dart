import 'package:drap_drop_list/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DragDropList());

class DragDropList extends StatelessWidget {
  const DragDropList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
