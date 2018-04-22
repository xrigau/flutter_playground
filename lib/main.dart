import 'package:flutter/material.dart';
import 'package:flutter_playground/challenge01.dart';
import 'package:flutter_playground/challenge02.dart';

void main() => runApp(FlutterPlaygroundApp());

class FlutterPlaygroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
        routes: <String, WidgetBuilder>{
          Challenge01Page.ROUTE: challenge(Challenge01Page(), challenge01Theme),
          Challenge02Page.ROUTE: challenge(Challenge02Page(), challenge02Theme),
        },
      );

  WidgetBuilder challenge(Widget widget, ThemeBuilder themeBuilder) => (BuildContext context) => Theme(
        child: widget,
        data: themeBuilder(),
        isMaterialAppTheme: true,
      );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Flutter Playground"),
        ),
        body: ListView(
          children: <Widget>[
            button(context, "Challenge 01", Challenge01Page.ROUTE),
            button(context, "Challenge 02", Challenge02Page.ROUTE),
          ],
        ),
      );

  Row button(BuildContext context, String title, String route) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text(title),
            onPressed: () => Navigator.of(context).pushNamed(route),
          ),
        ],
      );
}

typedef ThemeData ThemeBuilder();
