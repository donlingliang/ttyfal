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
        body: _buildListView(context),
      ),
    );
  }

  ListView _buildListView(context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, int) {
          return _getCardContainer(context, itemTitle, Icons.account_box);
        });
  }
}

Widget _getCardContainer(BuildContext context, String itemTitle, IconData iconData) {
  return new ListTile(
    leading: new Icon(iconData),
    title: new Text(itemTitle),
    subtitle: new Text(itemTitle),
    trailing: new Icon(iconData),
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
    return new Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}
