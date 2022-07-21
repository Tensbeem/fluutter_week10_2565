import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key); //1.constructor

  @override //2.state
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formkey = GlobalKey<FormState>();

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
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value){
                  if(value ==""){
                    return "Field is required";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Home",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: () {
                if(_formkey.currentState!.validate() == true){
                  print("Form Submitted Successfully");
                }
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}