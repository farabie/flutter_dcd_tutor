import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedFlexFlut extends StatelessWidget {
  const ExpandedFlexFlut({super.key});

  @override
  Widget build(BuildContext context) {
    //Perbedaan Expanded dan flexible adalah kalau expanded dia memenuhi ruang yang kosong
    //kalau flexible memungkinkan child widget-nya berukuran lebih kecil dibandingkan ukuran ruang yang tersisa
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[ExpandedWidget(), FlexWidget()],
            ),
            Row(
              children: const <Widget>[ExpandedWidget(), ExpandedWidget()],
            ),
            Row(
              children: const <Widget>[FlexWidget(), FlexWidget()],
            ),
            Row(
              children: const <Widget>[FlexWidget(), ExpandedWidget()],
            ),
          ],
        ),
      ),
    ));
  }
}

class ExpandedContain extends StatelessWidget {
  const ExpandedContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class FlexWidget extends StatelessWidget {
  const FlexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
