import 'package:flutter/material.dart';

class ElevatedButtonFlut extends StatefulWidget {
  const ElevatedButtonFlut({super.key});

  @override
  State<ElevatedButtonFlut> createState() => _ElevatedButtonFlutState();
}

class _ElevatedButtonFlutState extends State<ElevatedButtonFlut> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Elevated Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('Tombol Elevated Button'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outline Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
              ),
              DropdownButton<String>(
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'Dart',
                      child: Text('Dart'),
                    ),
                    DropdownMenuItem(
                      value: 'Kotlin',
                      child: Text('Kotlin'),
                    ),
                    DropdownMenuItem(
                      value: 'Swift',
                      child: Text('Swift'),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
