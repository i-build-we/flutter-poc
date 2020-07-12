import 'package:flutter/material.dart';
import 'package:profilepage/navigation_bloc/NavigationBloc.dart';

class NotificationPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/music3.jpg'),
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
