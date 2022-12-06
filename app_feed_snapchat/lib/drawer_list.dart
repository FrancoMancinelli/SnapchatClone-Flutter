import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(children: [
        menuItem(1, "Location", CupertinoIcons.location_solid),
        menuItem(2, "Messages", CupertinoIcons.chat_bubble),
        menuItem(3, "Camera", CupertinoIcons.camera),
        menuItem(4, "Friends", Icons.people_alt_outlined),
        menuItem(5, "Discover", CupertinoIcons.play),
        const Divider(
          height: 150,
        ),
        menuItem(6, "Settings", Icons.settings_outlined),
        menuItem(7, "Log Out", Icons.logout_outlined),
      ]),
    );
  }
}

Widget menuItem(int id, String text, IconData icon) {
  return Material(
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
        child: Row(
          children:  [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum DrawerSections {
  location,
  messages,
  camera,
  friends,
  discover,
  settings,
  logout,
}