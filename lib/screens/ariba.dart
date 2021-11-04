import 'package:flutter/material.dart';
import 'package:apsolute/screens/ariba_subscreens/pp1.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Ariba extends StatefulWidget {

  @override
  _AribaState createState() => _AribaState();
}

class _AribaState extends State<Ariba> {
  @override
  Widget build(BuildContext context) {
    final items=<Widget>[
    IconButton(icon: Icon(Icons.one_k,color: Colors.white),tooltip: 'pipeline 1',onPressed: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>PP1(),));}) ,
     IconButton(icon: Icon(Icons.two_k,color: Colors.white,), tooltip: 'pipeline 2',onPressed: (){}) ,
      IconButton(icon: Icon(Icons.three_k,color: Colors.white,), tooltip: 'pipeline 3',onPressed: (){}) ,
      IconButton(icon: Icon(Icons.four_k,color: Colors.white,),tooltip: 'pipeline 4', onPressed: (){}) ,
     ];
    return Scaffold(
      
      appBar: AppBar(
          title: Text('Ariba'),
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
      ],),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.black87,
            backgroundColor: Colors.transparent,
            items: items,
            height: 50,
          ) ,

    );
  }
}
