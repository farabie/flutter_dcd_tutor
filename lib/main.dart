import 'package:flutter/material.dart';
import 'package:flutter_dcd_tutor/ui/page/center_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/column_rowflut.dart';
import 'package:flutter_dcd_tutor/ui/page/container_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/decoration_container.dart';
import 'package:flutter_dcd_tutor/ui/page/elevated_buttonflut.dart';
import 'package:flutter_dcd_tutor/ui/page/expanded_flex_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/hello_world.dart';
import 'package:flutter_dcd_tutor/ui/page/imageflut.dart';
import 'package:flutter_dcd_tutor/ui/page/input_widgetflut.dart';
import 'package:flutter_dcd_tutor/ui/page/listview_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/mediaqueryflut.dart';
import 'package:flutter_dcd_tutor/ui/page/navigation_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/padding_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/scafoldflut.dart';
import 'package:flutter_dcd_tutor/ui/page/stateless_statefull_flut.dart';
import 'package:flutter_dcd_tutor/ui/page/tempat_wisata.dart';
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
                menuBelajar: const ScafoldFlut(),
                name2: "04. Container",
                menuBelajar2: const ContainerFlut(),
              ),
              MenuBelajar(
                name: "05. Dekorasi Container",
                menuBelajar: const DecorationContainerFlut(),
                name2: "06. Padding",
                menuBelajar2: const PaddingFlut(),
              ),
              MenuBelajar(
                name: "07. Center",
                menuBelajar: const CenterFlut(),
                name2: "08. Row dan Column",
                menuBelajar2: const ColumnRowFlut(),
              ),
              MenuBelajar(
                name: "09. Aplikasi Tempat Wisata",
                menuBelajar: const TempatWisata(),
                name2: "10. Button",
                menuBelajar2: const ElevatedButtonFlut(),
              ),
              MenuBelajar(
                name: "11. Input Widget",
                menuBelajar: const InputWidgetFlut(),
                name2: "12. Image",
                menuBelajar2: const ImageFlut(),
              ),
              MenuBelajar(
                name: "13. Perbaikan Tampilan Aplikasi",
                menuBelajar: const TempatWisata(),
                name2: "14. ListView",
                menuBelajar2: ListViewFlut(),
              ),
              MenuBelajar(
                name: "15. Expanded & Flexible",
                menuBelajar: const ExpandedFlexFlut(),
                name2: "16. Navigation",
                menuBelajar2: const NavigationFlut(),
              ),
              MenuBelajar(
                name: "17. Responsive Layout",
                menuBelajar: const MediaQueryFlut(),
                name2: "18. Menampilkan Daftar Tempat Wisata",
                menuBelajar2: const ContainerFlut(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
