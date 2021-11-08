import 'package:apsolute/screens/dev.dart';
import 'package:apsolute/screens/s4.dart';
import 'package:apsolute/screens/sms.dart';
import 'package:flutter/material.dart';
import 'package:apsolute/screens/ariba.dart';
class VerticalCard4 extends StatefulWidget {
  @override
  _VerticalCard4State createState() => _VerticalCard4State();
}

class _VerticalCard4State extends State<VerticalCard4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text('Apsolut Software India Pvt. Ltd.'),
          centerTitle: true,
          brightness: Brightness.dark,
          backgroundColor: Colors.black),
      body: Stack(
        children: [
          DraggableScrollableSheet(
             initialChildSize: 0.9,
          minChildSize: 0.6,
          maxChildSize: 1.0,
          builder: (BuildContext context, myScrollController)
          {
            return Padding(
              padding:const EdgeInsets.all(20.0), 
              child:Container(
                child:ListView
                (
                  controller: myScrollController,
                  children:
                  [
                   GestureDetector(
                     child: Card( 
                      color: Colors.black, 
                  child: Column(  
                  mainAxisSize: MainAxisSize.min,  
                  children: <Widget>[ 
                    SizedBox(height: 40), 
                  const ListTile(    
                  title: Text('Ariba',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.white ),textAlign: TextAlign.center,),  
              ),
              SizedBox(height: 20),
            ],  
           ),  
          ),
         
          onTap: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>Ariba(),));}
                   ),
                   SizedBox(height: 40),
          GestureDetector(
                     child: Card(  
                        color: Colors.black,
                  child: Column(  
                  mainAxisSize: MainAxisSize.min,  
                  children: <Widget>[  
                    SizedBox(height: 40),
                  const ListTile(    
                  title: Text('S4',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.white ),textAlign: TextAlign.center,),  
              ),
              SizedBox(height: 20),
            ],  
           ),  
          ),
         
          onTap: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>S4(),));}
                   ),
                   SizedBox(height: 20),
                   GestureDetector(
                     child: Card( 
                        color: Colors.black, 
                  child: Column(  
                  mainAxisSize: MainAxisSize.min,  
                  children: <Widget>[  
                    SizedBox(height: 40),
                  const ListTile(    
                  title: Text('SMS',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25 ,color: Colors.white),textAlign: TextAlign.center,),  
              ),
              SizedBox(height: 20),
            ],  
           ),  
          ),
         
          onTap: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>SMS(),));}
                   ),
                   SizedBox(height: 20),
         GestureDetector(
                     child: Card( 
                        color: Colors.black, 
                  child: Column(  
                  mainAxisSize: MainAxisSize.min,  
                  children: <Widget>[
                    SizedBox(height: 40),
                  const ListTile(    
                  title: Text('DEV',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25 ,color: Colors.white),textAlign: TextAlign.center,),  
              ),
              SizedBox(height: 20),
              
            ],  
           ),  
          ),
         
          onTap: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>DEV(),));}
                   ),
                   SizedBox(height: 0),
                  ]        
                  )
              )
            );
          }
          )

        
        ]
      )
    );
  }
}

