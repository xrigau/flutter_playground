import 'package:flutter/material.dart';

ThemeData challenge01Theme() => ThemeData(
      primarySwatch: Colors.orange,
      buttonColor: Colors.orange,
      brightness: Brightness.light,
    );

class Challenge01Page extends StatelessWidget {
  static const String ROUTE = '/challenge01';

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

  Widget _body(BuildContext context) => ListView(
        children: <Widget>[
          _heroImage(),
          _mainContent(context),
        ],
      );

  Padding _mainContent(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          children: <Widget>[
            _category(context),
            _projectName(context),
            _description(context),
            _readMore(context),
            _fundProgress(context),
            _fundInformation(context),
            _backProjectButton(context),
            _userAvatar(context),
          ],
        ),
      );

  Widget _heroImage() => Image.asset('assets/challenge01/hero.jpg');

  Widget _category(BuildContext context) => Row(
        children: <Widget>[
          Icon(
            Icons.videogame_asset,
            size: 20.0,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              'Game',
              style: _Theme.of(context).category,
            ),
          ),
        ],
      );

  Widget _projectName(BuildContext context) => Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          'Sustentability S/A: A mobile game about managing green houses',
          style: _Theme.of(context).title,
        ),
      );

  Widget _description(BuildContext context) => Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          'Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.',
          style: _Theme.of(context).description,
        ),
      );

  Widget _readMore(BuildContext context) => Row(
        children: <Widget>[
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'READ MORE',
              style: _Theme.of(context).readMore,
            ),
            onPressed: () {},
          ),
        ],
      );

  Widget _fundProgress(BuildContext context) => Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey.shade400,
            value: 0.65,
          ),
        ),
      );

  Widget _fundInformation(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
        child: Row(
          children: <Widget>[
            _fundingInfoItem(context, '\$75,000', 'of \$100,000 goal'),
            _fundingInfoItem(context, '300', 'backers'),
            _fundingInfoItem(context, '30', 'days to go'),
          ],
        ),
      );

  Widget _fundingInfoItem(BuildContext context, String topText, String bottomText) => Expanded(
        child: Column(
          children: <Widget>[
            Text(
              topText,
              style: _Theme.of(context).title,
            ),
            Text(
              bottomText,
              style: _Theme.of(context).subtitle,
            ),
          ],
        ),
      );

  Widget _backProjectButton(BuildContext context) => Padding(
        padding: EdgeInsets.all(20.0),
        child: RaisedButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 16.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Text(
            'BACK THIS PROJECT',
            style: _Theme.of(context).backThisProject,
          ),
        ),
      );

  Widget _userAvatar(BuildContext context) => Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: ExactAssetImage('assets/challenge01/avatar.jpg'),
            ),
            backgroundColor: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Text(
              'Xavi R.',
              style: _Theme.of(context).name,
            ),
          ),
        ],
      );
}

class _Theme {
  factory _Theme.of(BuildContext context) => _Theme(Theme.of(context));

  final ThemeData _themeData;

  _Theme(this._themeData);

  TextStyle get category => _themeData.textTheme.subhead.copyWith(color: Colors.grey);
  TextStyle get title => _themeData.textTheme.title.copyWith(fontWeight: FontWeight.bold);
  TextStyle get description => _themeData.textTheme.body1;
  TextStyle get readMore => _themeData.textTheme.button.copyWith(color: Colors.orange);
  TextStyle get subtitle => _themeData.textTheme.caption;
  TextStyle get backThisProject => _themeData.textTheme.button.copyWith(color: Colors.white);
  TextStyle get name => _themeData.textTheme.body1.copyWith(fontWeight: FontWeight.bold);
}
