import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key); //1.constructor

  @override //2.state
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  @override //3.build
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Validate User Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Home",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Print"))
            ],
          ),
        ),
      ),
    );
  }
}