import 'package:flutter/material.dart';

class PacmanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var pi = 3.141592653589;

    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 150,
        height: 150,
      ),
      0.4,
      2 * pi - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
