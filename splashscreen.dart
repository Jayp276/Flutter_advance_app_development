import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Screens/loginscreen.dart';

class mysplashscreen extends StatefulWidget {
  const mysplashscreen({super.key});

  @override
  State<mysplashscreen> createState() => _mysplashscreenState();
}

class _mysplashscreenState extends State<mysplashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => myloginscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      
      
      
      
      Stack(
        children: [
          Image.asset(
            "assets/images/first.jpg",
            height: MediaQuery.of(context).size.height,
          ),
          Positioned.fill(child: 
          BlurryContainer(
           blur: 0.2,
            color: Colors.blue.withOpacity(0.5),
            child: Column(
              children: [

              ],
            )), 


            
            
            
            
            ),


           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("The Happy", style: TextStyle(fontSize: 60, fontWeight:FontWeight.w400,fontStyle: FontStyle.italic, color: Colors.white ),)), 

              Text("Shopper", style: TextStyle(fontSize: 60, fontWeight:FontWeight.w400,fontStyle: FontStyle.italic, color: Colors.white),)
            ],
           )
        ],
      ),





    );

    // Container(

    //   child:Image.asset("assets/images/first.jpg", height:MediaQuery.of(context).size.width,)
    // );
  }
}
