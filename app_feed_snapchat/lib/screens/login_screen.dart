import 'package:app_snapchat2/style.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Style.yellowNavbar,
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
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 230),
              child: const Text('Welcome to Snapchat', 
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                fontFamily: 'SecularOne'),),
            ),

            ButtonTheme(  
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 223, 76, 92),
                  minimumSize: const Size.fromHeight(55),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {},
                child: const Text('LOG IN', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),  
              ),  
            ),  
            ButtonTheme(  
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 79, 171, 248),
                minimumSize: const Size.fromHeight(55),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),

              ),
              onPressed: () {},
              child: const Text('SIGN UP', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), ),  
            ),  
            ),
          ]  
         ))  
      ); 
  }
}