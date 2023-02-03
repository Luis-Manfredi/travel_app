import 'package:flutter/material.dart';

class WaveTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    final path = Path();
    
    // Square Figure
    // path.lineTo(0, height);
    // path.lineTo(width, height);
    // path.lineTo(width, 0);
    // path.close();

    // Figure with curve at the bottom
    
    path.lineTo(0, height - 150);
    path.quadraticBezierTo(
      width * 0.5,
      height + 100,
      width,
      height - 100
    );
    path.lineTo(width, 0);
    path.close();
    

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}