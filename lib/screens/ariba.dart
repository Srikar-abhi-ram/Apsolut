import 'package:flutter/material.dart';
import 'package:apsolute/screens/ariba_subscreens/viewariba.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:apsolute/screens/ariba_subscreens/editariba.dart';


class Ariba extends StatefulWidget {

  @override
  _AribaState createState() => _AribaState();
}

class _AribaState extends State<Ariba> {
  @override
  Widget build(BuildContext context) {
    
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

              
      ],),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.black87,
            backgroundColor: Colors.transparent,
            items: [
              TextButton(child: Text("View",style: TextStyle(color: Colors.white),),onPressed: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>ViewAriba(),));},),
              TextButton(child: Text("edit",style: TextStyle(color: Colors.white)),onPressed: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>Editariba(),));},),
            ],
            height: 50,
          ) ,

    );
  }
}
