import 'package:flutter/material.dart';
import 'package:profilepage/screens/MusicLibraryPage.dart';
import 'package:profilepage/screens/SearchPage.dart';
import 'package:profilepage/screens/SettingsPage.dart';

class ProfilePage extends StatelessWidget {
  static final String id = 'profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/music5.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 40.0,
                left: 200.0,
                child: Text(
                  '4096',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Positioned(
                top: 65.0,
                left: 190.0,
                child: Text(
                  'Followers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Positioned(
                top: 40.0,
                left: 290.0,
                child: Text(
                  '3000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Positioned(
                top: 65.0,
                left: 280.0,
                child: Text(
                  'Following',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Positioned(
                top: 500.0,
                left: 180.0,
                child: FloatingActionButton(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  heroTag: MusicLibraryPage.id,
                  backgroundColor: Colors.transparent,
                  elevation: 25.0,
                  child: Icon(
                    Icons.library_music,
                    size: 35.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MusicLibraryPage.id);
                  },
                ),
              ),
              Positioned(
                top: 500.0,
                left: 240.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 25.0,
                  heroTag: 'button2',
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    Icons.message,
                    size: 35.0,
                  ),
                  onPressed: () {
                    print('messages');
                  },
                ),
              ),
              Positioned(
                top: 560.0,
                left: 180.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 25.0,
                  heroTag: 'button4',
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    Icons.search,
                    size: 35.0,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          child: SearchPage(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 560.0,
                left: 240.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 25.0,
                  heroTag: SettingsPage.id,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 35.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, SettingsPage.id);
                  },
                ),
              ),
            ],
          )),
    );
  }
}
