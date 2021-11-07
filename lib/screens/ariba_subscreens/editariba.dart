import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Editariba extends StatefulWidget {
  
  
  @override
  _EditaribaState createState() => _EditaribaState();
}

class _EditaribaState extends State<Editariba> {


  final Stream<QuerySnapshot> _equipStream = FirebaseFirestore.instance.collection('Ariba').snapshots();


  TextEditingController sampledata1 = new TextEditingController();
  TextEditingController sampledata2 = new TextEditingController();
  TextEditingController sampledata3 = new TextEditingController();
  TextEditingController sampledata4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,centerTitle: true,title: Text("Edit the details"),),
      body: Padding(
              padding:const EdgeInsets.all(20.0), 
            child: Center(
              child: Column
              (children:<Widget> [
                  TextFormField(
                    controller: sampledata1,
                    decoration: InputDecoration(
                      hintText: "EmpHc"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: sampledata2,
                    decoration: InputDecoration(
                      hintText: "load mandays"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: sampledata3,
                    decoration: InputDecoration(
                      hintText: "ft-1"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: sampledata4,
                    decoration: InputDecoration(
                      hintText: "Free mandays"
                    ),
                  ),
                  SizedBox(height: 30,),

                ElevatedButton(
                  onPressed: (){
                      Map<String,dynamic> data ={"feild1":sampledata1.text,"feild2":sampledata2.text,"feild3":sampledata3.text,"feild4":sampledata4.text };
                      FirebaseFirestore.instance.collection("Ariba").add(data);
                }, 
                child: Text("submit"),
                )
              ]
              )
              )
              )

    );
  }
}