import 'package:flutter/material.dart';
import 'package:profilepage/navigation_bloc/NavigationBloc.dart';

class HomePage extends StatelessWidget with NavigationStates {
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
