import 'package:flutter/material.dart';

class DecorationContainerFlut extends StatelessWidget {
  const DecorationContainerFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Container Decoration'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10,
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 6),
                        blurRadius: 10,
                      )
                    ],
                    border: Border.all(width: 3)),
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10,
                    )
                  ],
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
