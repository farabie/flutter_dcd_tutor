import 'package:flutter/material.dart';

class ImageFlut extends StatelessWidget {
  const ImageFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Image'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.network(
                'https://picsum.photos/200/300',
                width: 200,
                height: 300,
              ),
              Image.asset(
                'images/luffy.jpg',
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
