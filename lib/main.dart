import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lands App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lands App'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text('Lands'),
          ),
        ),
      ),
    );
  }
}
