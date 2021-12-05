import 'package:apsolute/screens/dev.dart';
import 'package:apsolute/screens/s4.dart';
import 'package:apsolute/screens/sms.dart';
import 'package:flutter/material.dart';
import 'package:apsolute/screens/ariba.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'colors.dart';
class VerticalCard4 extends StatefulWidget {
  @override
  _VerticalCard4State createState() => _VerticalCard4State();
}

class _VerticalCard4State extends State<VerticalCard4> with TickerProviderStateMixin{

  final TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.white,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
            title: Text(''),
            centerTitle: true,
            brightness: Brightness.dark,
            backgroundColor: Colors.white,
            elevation: 6,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                    image: AssetImage('assets/apsolut.png'),
                  fit: BoxFit.fill
                    )),),
            ),
      ),
      body:
      Stack(children: [
      Center(child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_qvmh6Y.json')),
         Container(
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
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(
                               Radius.circular(20.0),
                             ),
                           ),
                           elevation: 1,
                          color: Colors.transparent,
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                       ListTile(
                      title: Text('ARIBA',
                        style:GoogleFonts.sahitya(textStyle: _textStyle),
                        //style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.white ),
                        textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 20),
                ],
               ),
              ),
      
              onTap: (){
                           Navigator.push(context,MaterialPageRoute( builder:(context)=>Ariba(),));}
                       ),
                       SizedBox(height: 40),
              GestureDetector(
                         child: Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(
                               Radius.circular(20.0),
                             ),
                           ),
                           elevation: 1,
                            color: Colors.transparent,
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                     ListTile(
                      title: Text('S4',
                        style:GoogleFonts.sahitya(textStyle: _textStyle),
      
                        textAlign: TextAlign.center,),
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
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(
                               Radius.circular(20.0),
                             ),
                           ),
                           elevation: 1,
                            color: Colors.transparent,
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                     ListTile(
                      title: Text('SMS',style:GoogleFonts.sahitya(textStyle: _textStyle),
                        textAlign: TextAlign.center,),
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
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(
                               Radius.circular(20.0),
                             ),
                           ),
                           elevation: 1,
                            color: Colors.transparent,
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                       ListTile(
                      title: Text('DEV',
                        style:GoogleFonts.sahitya(textStyle: _textStyle),
                        textAlign: TextAlign.center,),
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
          ),
      ],)
    );
  }
}
