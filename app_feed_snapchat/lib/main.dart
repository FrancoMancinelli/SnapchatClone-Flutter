import 'package:app_snapchat2/drawer_header.dart';
import 'package:app_snapchat2/drawer_list.dart';
import 'package:app_snapchat2/screens/stories_screen.dart';
import 'package:app_snapchat2/screens/temporary_screen.dart';
import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const _colors = [
    Style.greenNavbar,
    Style.blueNavbar,
    Style.yellowNavbar,
    Style.purpleNavbar,
    Style.redNavbar,
  ];

  int _currentScreen = 4;
  final PageController _pageController = PageController(initialPage: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.black,
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            HeaderDrawer(),
            DrawerList(),
          ],
        )),
      )),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentScreen = index;
          });
        },
        children: <Widget>[
          TemporaryScreen(color: _colors[0]),
          TemporaryScreen(color: _colors[1]),
          TemporaryScreen(color: _colors[2]),
          TemporaryScreen(color: _colors[3]),
          const StoriesScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        width: double.infinity,
        child: BottomNavigationBar(
          selectedItemColor: _colors[_currentScreen],
          unselectedItemColor: Style.white,
          backgroundColor: Style.black,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentScreen,
          onTap: (int index) {
            _pageController.jumpToPage(index);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.location_solid),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {
  
}
