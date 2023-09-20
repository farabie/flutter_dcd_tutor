import 'package:flutter/material.dart';

class CenterFlut extends StatelessWidget {
  const CenterFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Center'),
        ),
        body: const Center(
          child: Text('Text berada di tengah'),
        ),
      ),
    );
  }
}
