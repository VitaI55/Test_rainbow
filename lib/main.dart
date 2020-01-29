import 'package:flutter/material.dart';
import 'dart:math' as math;
void main() {
  runApp(
  MaterialApp(
    home: MyApp(),
  ),
);
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color;
  void randomColor() {
   setState(() => color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ButtonTheme(
        minWidth: 1200.0,
        height: 800.0,
        child: RaisedButton(
          onPressed: () => randomColor(),
          child: Text("Hey there", textDirection: TextDirection.ltr,style: TextStyle(height: 3, fontSize: 35),),
          color: color,
        ),
      ),
    );
  }
}


