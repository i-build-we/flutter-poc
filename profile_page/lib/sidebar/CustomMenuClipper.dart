import 'package:flutter/material.dart';

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0.0, 0.0);
    path.quadraticBezierTo(0, 2, 2, 2);
    path.quadraticBezierTo(width - 5, height / 2 - 28, width + 5, height / 2);
    path.quadraticBezierTo(width + 5, height / 2 + 20, 10, height - 2);
    path.quadraticBezierTo(8, height - 2, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
