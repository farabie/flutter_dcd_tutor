import 'package:flutter/material.dart';
import 'package:flutter_dcd_tutor/ui/page/tempat_wisata/detail_screen.dart';

class WisataIcon extends StatelessWidget {
  IconData iconData;
  String nameIcon;
  WisataIcon({
    super.key,
    required this.iconData,
    required this.nameIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(iconData),
        SizedBox(
          height: 8,
        ),
        Text(
          nameIcon,
          style: informationTextStyle,
        )
      ],
    );
  }
}
