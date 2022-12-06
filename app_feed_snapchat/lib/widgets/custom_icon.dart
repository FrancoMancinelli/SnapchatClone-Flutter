import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 59, 59, 59),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: child,
      ),
    );
  }
}
