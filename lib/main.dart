import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/99.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Image.asset("airplane-icon.png"),
                Container(
                  padding: EdgeInsets.only(bottom: 130,left: 10),
                  margin: EdgeInsets.only(left:5 ),
                  child: Row(
                    children: <Widget>[
                      Text(" EVENT",style: TextStyle(color: Colors.blue, fontSize: 28,fontWeight: FontWeight.w700),),
                      Text("calendar", style: TextStyle(color: Colors.black54,fontSize: 28, fontWeight: FontWeight.w600),)
                    ],
                  ),
//                    Text("about traveling the world, working remotely, inspiring people, and living a dream life!",
//                      style: TextStyle(color: Colors.white),),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomeScreen()  ));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text("Get Started",style: TextStyle(color: Colors.black87,fontSize: 24, fontWeight: FontWeight.w700),),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
