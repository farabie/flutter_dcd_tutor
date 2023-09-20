import 'package:flutter/material.dart';

class StatelessStatefullFlut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor Stateless & statefull'),
      ),
      body: Center(
        child: Text('Tutor Statefull & Stateless'),
      ),
    );
  }
}
