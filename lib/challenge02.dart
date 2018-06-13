import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

ThemeData challenge02Theme() => ThemeData(
      primarySwatch: Colors.purple,
      brightness: Brightness.light,
    );

class Challenge02Page extends StatelessWidget {
  static const String ROUTE = '/challenge02';
  final List<Item> items = <Item>[
    Item(
      'assets/challenge02/venice02.jpg',
      'Natural\nScenery',
      'Venice',
      _Alignment.START,
      Colors.orange[400].withAlpha(200),
    ),
    Item(
      'assets/challenge02/venice03.jpg',
      'Famous\nScenery',
      'Venice',
      _Alignment.END,
      Colors.blue[400].withAlpha(200),
    ),
    Item(
      'assets/challenge02/venice01.jpg',
      'Build\nScenery',
      'Venice',
      _Alignment.START,
      Colors.pink[400].withAlpha(200),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0; // 1.0 means normal animation speed.
    return Scaffold(
      appBar: AppBar(
        title: Text('CrowdFounder'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) => ListView(
        itemExtent: 200.0,
        children: items.map((item) => _item(item, context)).toList(),
      );

  Widget _item(Item item, BuildContext context) => InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) => Challenge02DetailPage(item))),
        child: Container(
          child: Stack(
            alignment: item._alignment == _Alignment.START ? AlignmentDirectional.centerStart : AlignmentDirectional.centerEnd,
            children: <Widget>[
              _image(item),
              _ItemInformation(item),
            ],
          ),
        ),
      );

  Widget _image(Item item) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Hero(
            tag: item._imagePath + "_img",
            child: Image.asset(
              item._imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}

class _ItemInformation extends StatelessWidget {
  final Item _item;

  _ItemInformation(this._item);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(8.0),
        child: Hero(
          tag: _item._imagePath + 'text',
          child: Container(
            color: _item._color,
            child: SizedBox(
              width: 210.0,
              height: 190.0,
              child: Column(
                crossAxisAlignment: _item._alignment == _Alignment.START ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: _item._alignment == _Alignment.START ? 0.0 : 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _item._title,
                          style: _Theme.of(context).title,
                        ),
                        Text(
                          _item._subtitle,
                          style: _Theme.of(context).subtitle,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class Challenge02DetailPage extends StatelessWidget {
  final Item _item;
  Challenge02DetailPage(this._item);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('CrowdFounder'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: _body(context),
      );

  Widget _body(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            _image(),
            _info(),
          ],
        ),
      );

  Widget _image() => SizedBox(
        width: double.infinity,
        height: 250.0,
        child: Hero(
          tag: _item._imagePath + "_img",
          child: Image.asset(
            _item._imagePath,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _info() => Row(
        children: <Widget>[
          SizedBox(
            width: 150.0,
            height: 150.0,
            child: Column(
              children: <Widget>[
                Text("Foo"),
                Text("Bar"),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              _ItemInformation(_item),
            ],
          ),
        ],
      );
}

class Item {
  final String _imagePath;
  final String _title;
  final String _subtitle;
  final _Alignment _alignment;
  final Color _color;
  Item(this._imagePath, this._title, this._subtitle, this._alignment, this._color);
}

enum _Alignment { START, END }

class _Theme {
  factory _Theme.of(BuildContext context) => _Theme(Theme.of(context));

  final ThemeData _themeData;

  _Theme(this._themeData);

  TextStyle get title => _themeData.textTheme.title.copyWith(fontWeight: FontWeight.bold, color: Colors.white);
  TextStyle get subtitle => _themeData.textTheme.subhead.copyWith(color: Colors.white);

  TextStyle get description => _themeData.textTheme.body1;
  TextStyle get readMore => _themeData.textTheme.button.copyWith(color: Colors.orange);
  TextStyle get backThisProject => _themeData.textTheme.button.copyWith(color: Colors.white);
  TextStyle get name => _themeData.textTheme.body1.copyWith(fontWeight: FontWeight.bold);
}
