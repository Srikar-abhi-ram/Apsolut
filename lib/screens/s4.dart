import 'package:flutter/material.dart';

class S4 extends StatefulWidget {

  @override
  _S4State createState() => _S4State();
}

class _S4State extends State<S4> {
  @override
  
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          title: Text('S4'),
          centerTitle: true,
          brightness: Brightness.dark,
          backgroundColor: Colors.black),
          body: Padding(
              padding:const EdgeInsets.all(20.0), 
            child: Center(
              child: Column
              (children:<Widget> [
              SizedBox(height: 310,),
              Text("position of the bargraph"),
              SizedBox(height: 120,),
              Text("bottom Navigation bar"),
      ],),
            ),
          )
    );
  }
}