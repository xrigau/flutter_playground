import 'package:flutter/material.dart';

ThemeData dragAndDropTheme() => ThemeData();

class DragAndDropPage extends StatelessWidget {
  static const String ROUTE = '/drag-and-drop';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Recipes'),
        ),
        body: body(),
      );

  Widget body() {
    return Text("Hello! Drag me!");
  }
}
