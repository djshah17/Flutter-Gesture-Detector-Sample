import 'package:flutter/material.dart';

class TapScreen extends StatefulWidget {
  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          print("TAP");
        },
        onDoubleTap: (){
          print("DOUBLE TAP");
        },
        onLongPress: (){
          print("LONG PRESS");
        },
      ),
    );
  }
}
