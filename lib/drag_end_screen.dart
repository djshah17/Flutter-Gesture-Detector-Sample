import 'package:flutter/material.dart';

class DragEndScreen extends StatefulWidget {
  @override
  _DragEndScreenState createState() => _DragEndScreenState();
}

class _DragEndScreenState extends State<DragEndScreen> {
  String dragDirection = '';
  String dXPoint = '';
  String dYPoint = '';
  String velocity = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: _onDragEnd,
          onVerticalDragEnd: _onDragEnd,
          child: Container(
            width: 700,
            height: 700,
            child: Text(
              this.velocity,
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  void _onDragEnd(DragEndDetails details) {
    double result = details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
    setState(() {
      this.velocity = '$result';
    });
  }
}
