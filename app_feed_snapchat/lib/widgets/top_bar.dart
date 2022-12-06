import 'package:app_snapchat2/style.dart';
import 'package:app_snapchat2/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: CustomIcon(child: Image.asset('assets/bitmoji1.png'))),
          const SizedBox(
            width: 10,
          ),
          const CustomIcon(
            child:
                Icon(Icons.search, color: Style.cameraPageIconColor, size: 30),
          ),
          if (text != null)
            Expanded(child: Center(child: Style.screenTitle(text!))),
          const CustomIcon(
              child: Icon(
            Icons.more_horiz,
            color: Style.cameraPageIconColor,
            size: 28,
          )),
        ],
      ),
    );
  }
}
