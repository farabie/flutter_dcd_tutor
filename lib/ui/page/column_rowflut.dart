import 'package:flutter/material.dart';

class ColumnRowFlut extends StatelessWidget {
  const ColumnRowFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Penerapan Column dan Row'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Main Axis Alignment SpaceEvently"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Text("Main Axis Alignment SpaceAround"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Text("Main Axis Alignment SpaceBetween"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Text("Main Axis Alignment start"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Text("Main Axis Alignment center"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Text("Main Axis Alignment end"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            )
          ],
        ),
      ),
    );
  }
}
