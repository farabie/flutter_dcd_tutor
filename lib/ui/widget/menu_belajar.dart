import 'package:flutter/material.dart';

class MenuBelajar extends StatelessWidget {
  String name;
  Widget menuBelajar;
  String name2;
  Widget menuBelajar2;

  MenuBelajar(
      {this.name = "",
      required this.menuBelajar,
      this.name2 = "",
      required this.menuBelajar2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.blue,
          width: 150,
          height: 150,
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return menuBelajar;
              }));
            },
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          width: 150,
          height: 150,
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return menuBelajar2;
              }));
            },
            child: Center(
              child: Text(
                name2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
