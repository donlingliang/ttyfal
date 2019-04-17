import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled=true;
  runApp(MyApp());
}

const String itemTitle = 'We are so excited to finally finish this photoset!';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ttyal Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new Center(
          child: new ListView(
            children: <Widget>[
              _getCardContainer(itemTitle, Icons.account_box)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _getCardContainer(String itemTitle, IconData iconData) {
  return new Container(
    child: new ListTile(
      leading: new Icon(iconData),
      title: new Text(itemTitle),
      subtitle: new Text(itemTitle),
      trailing: new Icon(iconData),
    )
  );
}
