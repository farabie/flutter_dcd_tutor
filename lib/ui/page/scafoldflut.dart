import 'package:flutter/material.dart';

class ScafoldFlut extends StatelessWidget {
  const ScafoldFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Scaffold'),
        ),
        body: Center(
          child: Text('Tutorial Scafold'),
        ),
      ),
    );
  }
}
