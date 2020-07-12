import 'package:flutter/material.dart';
import 'package:profilepage/navigation_bloc/NavigationBloc.dart';

class SettingsPage extends StatelessWidget with NavigationStates {
  static final String id = 'settings_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/music6.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}
