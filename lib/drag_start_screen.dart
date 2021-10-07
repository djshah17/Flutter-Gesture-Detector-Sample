import 'package:flutter/material.dart';

class DragStartScreen extends StatefulWidget {
  @override
  _DragStartScreenState createState() => _DragStartScreenState();
}

class _DragStartScreenState extends State<DragStartScreen> {

  String dragDirection = '';
  String startDXPoint = '';
  String startDYPoint = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragStart: _onHorizontalDragStartHandler,
        onVerticalDragStart: _onVerticalDragStartHandler,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.dragDirection,
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Start DX point: ${this.startDXPoint}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Start DY point: ${this.startDYPoint}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void _onHorizontalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection = "HORIZONTAL";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  void _onVerticalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection = "VERTICAL";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

}
