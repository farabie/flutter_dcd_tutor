import 'package:flutter/material.dart';
import 'package:flutter_dcd_tutor/ui/page/tempat_wisata/main_screen.dart';

class TempatWisata extends StatelessWidget {
  const TempatWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wisata Bandung',
        theme: ThemeData(),
        home: const MainScreenWisata());
  }
}
