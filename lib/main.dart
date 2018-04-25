import 'package:flutter/material.dart';
import 'package:flutter_playground/challenge01.dart';
import 'package:flutter_playground/challenge02.dart';

void main() => runApp(FlutterPlaygroundApp(<Page>[
      Page(Challenge01Page(), challenge01Theme, Challenge01Page.ROUTE, 'Challenge 01'),
      Page(Challenge02Page(), challenge02Theme, Challenge02Page.ROUTE, 'Challenge 02'),
    ]));

typedef ThemeData ThemeBuilder();

class Page {
  final Widget widget;
  final ThemeBuilder themeBuilder;
  final String route;
  final String title;

  Page(this.widget, this.themeBuilder, this.route, this.title);
}

class FlutterPlaygroundApp extends StatelessWidget {
  final List<Page> _pages;
  FlutterPlaygroundApp(this._pages);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(_pages),
        routes: Map<String, WidgetBuilder>.fromIterables(
          _pages.map((Page page) => page.route),
          _pages.map((Page page) => buildPage(page.widget, page.themeBuilder)),
        ),
      );

  WidgetBuilder buildPage(Widget widget, ThemeBuilder themeBuilder) => (BuildContext context) => Theme(
        child: widget,
        data: themeBuilder(),
        isMaterialAppTheme: true,
      );
}

class HomePage extends StatelessWidget {
  final List<Page> _pages;
  HomePage(this._pages);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playground'),
        ),
        body: ListView(
          children: _pages.map((page) => button(context, page.title, page.route)).toList(),
        ),
      );

  Row button(BuildContext context, String title, String route) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(title),
                onPressed: () => Navigator.of(context).pushNamed(route),
              ),
            ),
          ),
        ],
      );
}
