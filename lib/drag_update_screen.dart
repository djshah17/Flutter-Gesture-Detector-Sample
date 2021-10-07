import 'package:flutter/material.dart';

class DragUpdateScreen extends StatefulWidget {
  @override
  _DragUpdateScreenState createState() => _DragUpdateScreenState();
}

class _DragUpdateScreenState extends State<DragUpdateScreen> {
  String dragDirection = '';
  String dXPoint = '';
  String dYPoint = '';
  String velocity = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: _onHorizontalDragUpdateHandler,
        onVerticalDragUpdate: _onVerticalDragUpdateHandler,
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
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Update DX point: ${this.dXPoint}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Update DY point: ${this.dYPoint}',
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

  void _onHorizontalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "HORIZONTAL UPDATING";
      this.dXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.dYPoint = '${details.globalPosition.dy.floorToDouble()}';
      this.velocity = '';
    });
  }

  void _onVerticalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "VERTICAL UPDATING";
      this.dXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.dYPoint = '${details.globalPosition.dy.floorToDouble()}';
      this.velocity = '';
    });
  }

}
