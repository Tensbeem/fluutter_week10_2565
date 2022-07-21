import 'package:flutter/material.dart';
import 'package:flutter_week10/textfield_demo.dart';
import 'from_demo.dart';
class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key); //1.constuctor

  @override //2.build
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: FormDemo(
      ),
    );
  }
}