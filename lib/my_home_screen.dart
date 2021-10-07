import 'package:flutter/material.dart';
import 'package:gesturedetectorsample/drag_end_screen.dart';
import 'package:gesturedetectorsample/drag_start_screen.dart';
import 'package:gesturedetectorsample/drag_update_screen.dart';
import 'package:gesturedetectorsample/scale_screen.dart';
import 'package:gesturedetectorsample/tap_screen.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("Drag Start", style: TextStyle(fontSize: 22)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DragStartScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.amber,
                      child: Text("Drag Update", style: TextStyle(fontSize: 22)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DragUpdateScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text("Drag End",
                          style: TextStyle(fontSize: 22)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DragEndScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text("Tap", style: TextStyle(fontSize: 22)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TapScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pinkAccent,
                      child: Text("Scale", style: TextStyle(fontSize: 22)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScaleScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ])),
      ),
    );
  }
}
