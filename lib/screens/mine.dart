import 'package:flutter/material.dart';
import '../second_page.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class TabMine extends StatelessWidget {
  TabMine(this.bottomNavigationKey);

  final GlobalKey bottomNavigationKey;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("This is the search page 21"),
          RaisedButton(
            child: Text(
              "Start new page",
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SecondPage()));
            },
          )
        ],
      ),
    );
  }
}
