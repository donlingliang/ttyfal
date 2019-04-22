import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

void main() {
//  debugPaintSizeEnabled = true;
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
        body: _buildListView(context),
      ),
    );
  }

  ListView _buildListView(context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, int) {
          var assetsImage = new AssetImage('assets/graphics/cover_1.jpg');
          var image = new Image(image: assetsImage, width: 48.0, height: 48.0);
          return _getCardContainer(context, itemTitle, image);
        });
  }
}

Widget _getCardContainer(
    BuildContext context, String itemTitle, Image iconData) {
  return new ListTile(
    leading: iconData,
    title: new Text(itemTitle),
    subtitle: new Text(itemTitle),
    trailing: Hero(tag: "Hero Widget", child: iconData),
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => CardDetailView()));
    },
  );
}

// Detail View
class CardDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/graphics/cover_1.jpg');
    var image = new Image(image: assetsImage, width: 150.0, height: 150.0);

    return new Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Hero(
        tag: "Hero Widget",
        child: image,

      ),
    ));
  }
}
