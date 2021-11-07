import 'package:flutter/material.dart';


class SMS extends StatefulWidget {

  @override
  _SMSState createState() => _SMSState();
}

class _SMSState extends State<SMS> {
  @override
  
   Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          title: Text('SMS'),
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