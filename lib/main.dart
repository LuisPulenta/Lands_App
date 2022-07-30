import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lands App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lands App'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: const Text('Lands'),
          ),
        ),
      ),
    );
  }
}
