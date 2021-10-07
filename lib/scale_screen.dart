import 'package:flutter/material.dart';

class ScaleScreen extends StatefulWidget {
  @override
  _ScaleScreenState createState() => _ScaleScreenState();
}

class _ScaleScreenState extends State<ScaleScreen> {
  String distance = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onScaleUpdate: _onScaleUpdateHandler,
            child: Center(
              child: Text(
                this.distance,
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
        ));
  }

  void _onScaleUpdateHandler(ScaleUpdateDetails details) {
    setState(() {
      this.distance = '${details.scale.toStringAsFixed(3)}';
    });
  }
}
