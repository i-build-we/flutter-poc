import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profilepage/navigation_bloc/NavigationBloc.dart';
import 'package:profilepage/screens/MyProfilePage.dart';
import 'package:profilepage/sidebar/Sidebar.dart';

class SidebarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(MyProfilePage()),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
            Sidebar(),
          ],
        ),
      ),
    );
  }
}
