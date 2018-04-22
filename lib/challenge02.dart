import 'package:flutter/material.dart';

ThemeData challenge02Theme() => ThemeData();

class Challenge02Page extends StatelessWidget {
  static const String ROUTE = "/challenge02";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: new AppBar(
          title: new Text("?"),
        ),
        body: body(context),
      );

  Widget body(BuildContext context) => Text("Coming soon...");
}
