import 'package:flutter/material.dart';
import 'package:flutter_dcd_tutor/ui/page/hello_world.dart';
import 'package:flutter_dcd_tutor/ui/page/scafoldflut.dart';
import 'package:flutter_dcd_tutor/ui/page/stateless_statefull_flut.dart';
import 'package:flutter_dcd_tutor/ui/widget/menu_belajar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial Flutter Dicoding'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: <Widget>[
              MenuBelajar(
                name: "01. Stateless & Statefull Widget",
                menuBelajar: StatelessStatefullFlut(),
                name2: "02. Hello World",
                menuBelajar2: const HelloWorld(),
              ),
              MenuBelajar(
                name: "03. Scaffold",
                menuBelajar: StatelessStatefullFlut(),
                name2: "04. Container",
                menuBelajar2: const HelloWorld(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
