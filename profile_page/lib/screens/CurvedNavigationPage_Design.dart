import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationPage_Design extends StatefulWidget {
  static final String id = 'curved_navigation';

  @override
  _CurvedNavigationPage_DesignState createState() =>
      _CurvedNavigationPage_DesignState();
}

class _CurvedNavigationPage_DesignState
    extends State<CurvedNavigationPage_Design> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        backgroundColor: Colors.blueAccent,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.library_music, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          setState(() {
            this._page = index;
          });
        },
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
              RaisedButton(
                child: Text('Go to Home Page'),
                onPressed: () {
                  final CurvedNavigationBarState navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState.setPage(0);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
