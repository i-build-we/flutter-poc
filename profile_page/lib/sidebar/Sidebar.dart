import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profilepage/navigation_bloc/NavigationBloc.dart';
import 'package:profilepage/sidebar/CustomMenuClipper.dart';
import 'package:profilepage/sidebar/MenuItem.dart';
import 'package:rxdart/rxdart.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar>
    with SingleTickerProviderStateMixin<Sidebar> {
  AnimationController _animationController;
  final _animatedDuration = const Duration(milliseconds: 500);
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;

  void iconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animatedDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSidebarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animatedDuration,
          top: 0,
          bottom: 0,
          left: isSidebarOpenedAsync.data ? 0 : -screenWidth,
          right: isSidebarOpenedAsync.data ? 0 : screenWidth - 33,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.black87,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      ListTile(
                        title: Text(
                          'Ravi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: Text(
                          'ravi@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          radius: 40,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '3000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            '4000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Divider(
                        height: 40,
                        thickness: 0.5,
                        color: Colors.blue,
                        indent: 32,
                        endIndent: 32,
                      ),
                      MenuItem(
                        iconData: Icons.home,
                        title: 'Home',
                        onTap: () {
                          iconPressed();
                          BlocProvider.of<NavigationBloc>(context).add(
                              NavigationEvents.HOME_PAGE_SIDEBAR_CLICK_EVENT);
                        },
                      ),
                      MenuItem(
                        iconData: Icons.person,
                        title: 'My Profile',
                        onTap: () {
                          iconPressed();
                          BlocProvider.of<NavigationBloc>(context).add(
                              NavigationEvents.MY_PROFILE_SIDEBAR_CLICK_EVENT);
                        },
                      ),
                      MenuItem(
                        iconData: Icons.notifications,
                        title: 'Notifications',
                        onTap: () {
                          iconPressed();
                          BlocProvider.of<NavigationBloc>(context).add(
                              NavigationEvents
                                  .NOTIFICATIONS_PAGE_SIDEBAR_CLICK_EVENT);
                        },
                      ),
                      MenuItem(
                        iconData: Icons.message,
                        title: 'Messages',
                        onTap: () {
                          iconPressed();
                          BlocProvider.of<NavigationBloc>(context).add(
                              NavigationEvents
                                  .MESSAGES_PAGE_SIDEBAR_CLICK_EVENT);
                        },
                      ),
                      MenuItem(
                        iconData: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          iconPressed();
                          BlocProvider.of<NavigationBloc>(context).add(
                              NavigationEvents
                                  .SETTINGS_PAGE_SIDEBAR_CLICK_EVENT);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1.0),
                child: GestureDetector(
                  onTap: () {
                    iconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      height: 60.0,
                      width: 30.0,
                      color: Colors.transparent,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.deepOrange.shade700,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
