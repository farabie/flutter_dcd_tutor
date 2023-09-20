import 'package:flutter/material.dart';

class PaddingFlut extends StatelessWidget {
  const PaddingFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Padding Tutorial'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(30),
          child: Text('Ini adalah padding'),
        ),
      ),
    );
  }
}
