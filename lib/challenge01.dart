import 'package:flutter/material.dart';

ThemeData challenge01Theme() => ThemeData(
      primarySwatch: Colors.indigo,
      splashColor: Colors.indigo.shade500,
      primaryColor: Colors.indigo.shade600,
      scaffoldBackgroundColor: Colors.indigo.shade500,
      brightness: Brightness.dark,
    );

class Challenge01Page extends StatelessWidget {
  static String ROUTE = '/challenge01';

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
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: CircleAvatar(
                  radius: 50.0,
                  child: FlutterLogo(
                    size: 50.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Xavi Rigau",
                  style: Theme.of(context).textTheme.display1,
                ),
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Theme.of(context).dividerColor, width: 2.0),
                  bottom: BorderSide(color: Theme.of(context).dividerColor, width: 2.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  children: <Widget>[
                    _profileInfoItem(context, '343', 'POSTS'),
                    _profileInfoItem(context, '673,826', 'FOLLOWERS'),
                    _profileInfoItem(context, '275', 'FOLLOWING'),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: RaisedButton(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.perm_contact_calendar),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text("Follow"),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )
        ],
      );

  Expanded _profileInfoItem(BuildContext context, String topText, String bottomText) => Expanded(
        child: Column(
          children: <Widget>[
            Text(
              topText,
              style: Theme.of(context).textTheme.body1,
            ),
            Text(
              bottomText,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      );

  IconButton dummyIconButton(IconData icon) => IconButton(
        icon: Icon(icon),
        onPressed: () {},
      );
}
