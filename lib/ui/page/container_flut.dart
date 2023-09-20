import 'package:flutter/material.dart';

class ContainerFlut extends StatelessWidget {
  const ContainerFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Container'),
        ),
        body: Container(
          width: 100,
          height: 40,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          color: Colors.blue,
          child: Text(
            'Halo Dicoding',
            maxLines: 1,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
