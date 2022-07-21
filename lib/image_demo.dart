import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{
//  1.contuctor
  const ImageDemo({Key? key}):super(key: key);

//  2.boild
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Basic"),
      ),
      body: Center(
          child: Image.asset("assets/cats.jpg", width: 100.0,)
      ),
    );
  }
}