import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snapchat',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 255, 252, 0),
body: Center(
  child: Column(
     mainAxisSize: MainAxisSize.max,
     mainAxisAlignment: MainAxisAlignment.end,
     
     children: <Widget>[

            Container(
               height: 95.0,
               width: 100.0,
               decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/logo.png'),
                      fit: BoxFit.fill,
                    ),
                    ),
            ),

            Container(
              child: Text('Welcome to Snapchat', 
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                fontFamily: 'SecularOne'),),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 230),
            ),

            Container(   
              child: ButtonTheme(  
                child: ElevatedButton(
                  child: Text('LOG IN', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 223, 76, 92),
                    minimumSize: Size.fromHeight(55),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  onPressed: () {},  
                ),  
              ),  
            ),  
            Container(   
              child: ButtonTheme(  
                child: ElevatedButton(
                child: Text('SIGN UP', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 79, 171, 248),
                  minimumSize: Size.fromHeight(55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),

                ),
                onPressed: () {},  
              ),  
            ),  
            ),
          ]  
         ))  
      ); 
  }

}


