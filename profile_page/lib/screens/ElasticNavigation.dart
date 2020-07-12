import 'package:flutter/material.dart';
import 'package:profilepage/sidebar/SidebarLayout.dart';

class ElasticNavigation extends StatelessWidget {
  static final String id = 'elastic_navigation';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SidebarLayout(),
    );
  }
}
