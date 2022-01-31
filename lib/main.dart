import 'package:article_cp/circle_painter.dart';
import 'package:article_cp/curved_painter.dart';
import 'package:article_cp/line_painter.dart';
import 'package:article_cp/pacman_painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomPaint Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyPainter(),
    );
  }
}

class MyPainter extends StatelessWidget {
  const MyPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text('CustomPaint Tutorial'),
      ),
      body: CustomPaint(
        // The Size Of The Canvas
        size: const Size(300, 200),

        // The First Painter In The Stack
        painter: CurvedPainter(),
        child: Container(),
      ),
    );
  }
}
