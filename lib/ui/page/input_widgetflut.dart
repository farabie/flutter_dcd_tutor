import 'package:flutter/material.dart';

class InputWidgetFlut extends StatefulWidget {
  const InputWidgetFlut({super.key});

  @override
  State<InputWidgetFlut> createState() => _InputWidgetFlutState();
}

class _InputWidgetFlutState extends State<InputWidgetFlut> {
  TextEditingController _controller = TextEditingController();
  bool lightON = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Input Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Tulis nama anda',
                    labelText: 'Your name',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello ${_controller.text}'),
                        );
                      });
                },
                child: Text('Subimt'),
              ),
              SizedBox(
                height: 40,
              ),
              Switch(
                  value: lightON,
                  onChanged: (bool value) {
                    setState(() {
                      lightON = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(lightON ? 'Light ON' : 'Light Off'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                  }),
              ListTile(
                leading: Radio<String>(
                  value: 'Dart',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      showSnackbar();
                    });
                  },
                ),
                title: Text('Dart'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Kotlin',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      showSnackbar();
                    });
                  },
                ),
                title: Text('Kotlin'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Swift',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      showSnackbar();
                    });
                  },
                ),
                title: Text('Swift'),
              ),
              ListTile(
                leading: Checkbox(
                  value: agree,
                  onChanged: (bool? value) {
                    setState(() {
                      agree = value!;
                    });
                  },
                ),
                title: Text('Agree/Disagree'),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///Jangan lupa buat void disposenya
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Language Selected'),
      duration: Duration(seconds: 1),
    ));
  }
}
