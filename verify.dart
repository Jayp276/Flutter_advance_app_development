import 'package:flutter/material.dart';

class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Image.asset("assets/images/verify.png", height: 200,)), 
SizedBox(height: 10,),
          Center(child: Text("Password changed successfully", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blue),))
        ],
      ),
    );
  }
}