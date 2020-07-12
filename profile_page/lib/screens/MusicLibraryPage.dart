import 'package:flutter/material.dart';
import 'package:profilepage/screens/CurvedNavigationPage_Design.dart';
import 'package:profilepage/screens/ElasticNavigation.dart';

class MusicLibraryPage extends StatelessWidget {
  static final String id = 'music_library_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/music.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 560.0,
              left: 240.0,
              child: FloatingActionButton(
                heroTag: CurvedNavigationPage_Design.id,
                backgroundColor: Colors.transparent,
                elevation: 25.0,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.settings,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, CurvedNavigationPage_Design.id);
                },
              ),
            ),
            Positioned(
              top: 600.0,
              left: 240.0,
              child: FloatingActionButton(
                heroTag: ElasticNavigation.id,
                backgroundColor: Colors.transparent,
                elevation: 25.0,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.settings,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ElasticNavigation.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
