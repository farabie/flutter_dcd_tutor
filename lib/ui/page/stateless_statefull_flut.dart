import 'package:flutter/material.dart';
import 'package:flutter_dcd_tutor/ui/widget/bigger_text.dart';
import 'package:flutter_dcd_tutor/ui/widget/heading.dart';

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
      body: const Center(
        child: BiggerText(text: 'Hello World!'),
      ),
    );
  }
}
