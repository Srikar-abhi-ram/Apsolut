import 'dart:async';

import 'package:apsolute/colors.dart';
import 'package:apsolute/screens/ariba.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Editariba extends StatefulWidget {
  @override
  _EditaribaState createState() => _EditaribaState();
}

class _EditaribaState extends State<Editariba> {

  bool isLoading =false;
  String month = 'Nov';
  int x=18;
  List monthsList = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  final Stream<QuerySnapshot> _equipStream =
      FirebaseFirestore.instance.collection('Ariba').snapshots();
  String month1 ='October';
  TextEditingController sampledata1 = new TextEditingController();
  TextEditingController sampledata2 = new TextEditingController();
  TextEditingController sampledata3 = new TextEditingController();
  TextEditingController sampledata4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: relay1,
          brightness: Brightness.dark,
          centerTitle: true,
          title: Text("Edit the details"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[

                    Text(
                      "Select Month ",
                      style: TextStyle(
                          color: relay2,
                          fontWeight: FontWeight.bold,
                          fontSize: 29),
                    ),
                SizedBox(height: 10,),
                    DropdownButton(
                      hint: Text('Select Month'),
                      value: month,
                      onChanged: (newValue) {
                        setState(() {
                          month = newValue;
                          print(month);
                        });
                      },
                      items: monthsList.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem, child: Text(valueItem));
                      }).toList(),
                    ),
                SizedBox(height: 10,),
              TextFormField(
                  controller: sampledata1,
                  decoration: InputDecoration(hintText: "Number of Free Emp"),
              ),
              SizedBox(
                  height: 20,
              ),
              TextFormField(
                  controller: sampledata2,
                  decoration: InputDecoration(hintText: "Ft"),
              ),
              SizedBox(
                  height: 20,
              ),
              TextFormField(
                  controller: sampledata3,
                  decoration: InputDecoration(hintText: "Load Emp"),
              ),
                  SizedBox(
                  height: 20,
              ),
                 /* TextFormField(
                  controller: sampledata4,
                  decoration: InputDecoration(hintText: ""),
              ),*/
                  SizedBox(
                  height: 20,
              ),
                    ButtonBar(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Cancel",style: TextStyle(color: relay1),),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: relay2
                            ),
                          onPressed: () async{
                            print(month);
                            Map<String, dynamic> data = {
                              "freeEmp": sampledata1.text,
                              "freeMd": int.parse(sampledata1.text)*18,
                              "ftEmp": sampledata2.text,
                              "ftMd": int.parse(sampledata2.text)*18,
                              "loadEmp": sampledata3.text,
                              "loadMd":int.parse(sampledata3.text)*18,
                             // "feild4": sampledata4.text

                            };
                            if(isLoading) return;
                            setState(() {
                              isLoading =true;
                            });
                            await Future.delayed(Duration(seconds: 5));
                            setState(() {
                              isLoading =false;
                               Timer(Duration(seconds: 3),(){
                               Navigator.push( context,MaterialPageRoute( builder:(context)=>Ariba(), ));});
                            });
                            FirebaseFirestore.instance.collection("Ariba").doc(month).update(data);
                          },
                          child:isLoading ? Row(mainAxisAlignment: MainAxisAlignment.center,children: [CircularProgressIndicator(color: Colors.white,),
                          const SizedBox(width:8,),
                          Text("please wait...")
                           ])
                           : Text("Submit"),
                           
                          
                        ),

                      ],
                    ),
         
            ]),
                ))));
  }
}
