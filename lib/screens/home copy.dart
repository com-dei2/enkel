import 'package:flutter/material.dart';
import '../second_page.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class TabHome extends StatelessWidget {
  TabHome(this.bottomNavigationKey);

  final GlobalKey bottomNavigationKey;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("This is the home page"),
          RaisedButton(
            child: Text(
              "Start new page 25",
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          RaisedButton(
            child: Text(
              "Change to page 3",
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).accentColor,
            onPressed: () {
              final FancyBottomNavigationState fState =
                  this.bottomNavigationKey.currentState;
              fState.setPage(2);
            },
          )
        ],
      ),
    );
  }
}
