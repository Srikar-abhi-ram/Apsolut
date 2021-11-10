import 'package:apsolute/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Editariba extends StatefulWidget {
  @override
  _EditaribaState createState() => _EditaribaState();
}

class _EditaribaState extends State<Editariba> {
  final Stream<QuerySnapshot> _equipStream =
      FirebaseFirestore.instance.collection('Ariba').snapshots();
  String month ='October';
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
            padding: const EdgeInsets.all(70.0),
            child: Center(
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
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
                          onPressed: () {
                            Map<String, dynamic> data = {
                              "freeEmp": sampledata1.text,
                              "freeMd": int.parse(sampledata1.text)*18,
                              "ftEmp": sampledata2.text,
                              "ftMd": int.parse(sampledata2.text)*18,
                              "loadEmp": sampledata3.text,
                              "loadMd":int.parse(sampledata3.text)*18,
                             // "feild4": sampledata4.text
                            };
                            FirebaseFirestore.instance.collection("Ariba").doc("October").update(data);
                          },
                          child: const Text("Submit"),
                        ),

                      ],
                    )

            ]),
                ))));
  }
}
