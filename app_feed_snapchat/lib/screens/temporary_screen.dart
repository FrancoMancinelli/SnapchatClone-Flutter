import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';

class TemporaryScreen extends StatelessWidget {
  const TemporaryScreen({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 270),
        child: Text('En Desarrollo...',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Style.blackText,
        ),),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
