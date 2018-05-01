import 'package:flutter/material.dart';

ThemeData challenge01Theme() => ThemeData();

class Challenge01Page extends StatelessWidget {
  static const String ROUTE = '/challenge01';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: new AppBar(
          title: new Text('?'),
        ),
        body: body(context),
      );

  Widget body(BuildContext context) => Text('Coming soon…');
}
