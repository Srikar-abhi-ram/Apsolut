import 'package:flutter/material.dart';


class DEV extends StatefulWidget {

  @override
  _DEVState createState() => _DEVState();
}

class _DEVState extends State<DEV> {
  @override
  
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          title: Text('DEV'),
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
