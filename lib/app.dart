import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key); //1.constuctor

  @override //2.build
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App",
      home: Scaffold(

      ),
    );
  }
}