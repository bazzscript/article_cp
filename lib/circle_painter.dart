import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // The Paint Object, this can be likened to a brush, pen, or marker,
    // You can specify the size, color e.t.c.
    // And it is usually configured before painting, just like you would decide which color pen to draw on paper with.

    var paint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 15;

    // The point to start drawing from, more like the center of the circle
    Offset center = Offset(size.width / 2, size.height / 2);

    // We make use of the drawCircle method inside the Canvas class to draw the line,
    // All we need to do is pass in the center point, the radius and the paint object.
    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
