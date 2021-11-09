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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child: AppBar(

            title: Text(''),
            centerTitle: true,
            brightness: Brightness.dark,
            backgroundColor: Colors.transparent,
            elevation: 6,
            flexibleSpace: Container(decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/apsolut.png'),fit: BoxFit.cover)),),
            ),
      ),
      body:Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/homebackground.jpg'),

        fit: BoxFit.cover
        )),
        child: Stack(
          children: [
            DraggableScrollableSheet(
               initialChildSize: 1.0,
            minChildSize: 0.9,
            maxChildSize: 1.0,
            builder: (BuildContext context, myScrollController)
            {
              return Padding(
                padding:const EdgeInsets.all(10.0),
                child:Container(
                  child:ListView
                  (
                    controller: myScrollController,
                    children:
                    [
                     GestureDetector(
                       child: Card(
                        color: Colors.transparent,
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
                          color: Colors.transparent,
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
                          color: Colors.transparent,
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
                          color: Colors.transparent,
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

            onTap: (){Navigator.push(context,MaterialPageRoute( builder:(context)=>Dev(),));}
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

