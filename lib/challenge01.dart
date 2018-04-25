import 'package:flutter/material.dart';

ThemeData challenge01Theme() => ThemeData(
      primarySwatch: Colors.indigo,
      splashColor: Colors.indigo.shade500,
      primaryColor: Colors.indigo.shade600,
      scaffoldBackgroundColor: Colors.indigo.shade500,
      brightness: Brightness.dark,
    );

class Challenge01Page extends StatelessWidget {
  static const String ROUTE = '/challenge01';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          elevation: 0.0,
          leading: dummyIconButton(Icons.menu),
          actions: <Widget>[
            dummyIconButton(Icons.search),
          ],
        ),
        body: body(context),
      );

  Widget body(BuildContext context) => ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              dummyIconButton(Icons.email),
              dummyIconButton(Icons.more_vert),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                child: FlutterLogo(
                  size: 50.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Eric Schmidt",
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text(
              'Snowboarder, superhero and writer.\nSometimes I work at Google as\nExecutive Chairman',
              style: Theme.of(context).textTheme.body2,
              textAlign: TextAlign.center,
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[]),
        ],
      );

  IconButton dummyIconButton(IconData icon) => IconButton(
        icon: Icon(icon),
        onPressed: () {},
      );
}
