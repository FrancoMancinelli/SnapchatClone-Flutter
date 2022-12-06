import 'package:app_snapchat2/style.dart';
import 'package:flutter/material.dart';


class HeaderDrawer extends StatefulWidget {
  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.yellowNavbar,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/bitmoji1.png'),
              )
            ),
          ),
          const Text('Gabriela Gomez', style: TextStyle(
            color: Style.blackText, 
            fontSize: 20,
            fontFamily: 'SecularOne'
            ),
          ),
          Text('gabrielagomez@gmail.com', style: TextStyle(
            color: Style.blackText,
            fontSize: 14,
          ),)
        ],
      ),
    );
  }
}