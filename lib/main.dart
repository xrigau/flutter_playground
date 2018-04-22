import 'package:flutter/material.dart';
import 'package:flutter_playground/challenge01.dart';

void main() => runApp(FlutterPlaygroundApp());

class FlutterPlaygroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
        routes: <String, WidgetBuilder>{
          Challenge01Page.ROUTE: challenge(Challenge01Page(), challenge01Theme),
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
        appBar: new AppBar(
          title: new Text("Flutter Playground"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("Challenge 01"),
                  onPressed: () => Navigator.of(context).pushNamed(Challenge01Page.ROUTE),
                ),
              ],
            ),
          ],
        ),
      );
}

typedef ThemeData ThemeBuilder();
