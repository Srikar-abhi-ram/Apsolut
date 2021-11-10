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
                  decoration: InputDecoration(hintText: "Number of Emp"),
              ),
              SizedBox(
                  height: 20,
              ),
              TextFormField(
                  controller: sampledata2,
                  decoration: InputDecoration(hintText: "Working days"),
              ),
              SizedBox(
                  height: 20,
              ),
              TextFormField(
                  controller: sampledata3,
                  decoration: InputDecoration(hintText: "BreakEven %"),
              ),
                  SizedBox(
                  height: 20,
              ),
                  TextFormField(
                  controller: sampledata4,
                  decoration: InputDecoration(hintText: ""),
              ),
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
                              "feild1": sampledata1.text,
                              "feild2": sampledata2.text,
                              "feild3": sampledata3.text,
                              "feild4": sampledata4.text
                            };
                            FirebaseFirestore.instance.collection("Ariba").add(data);
                          },
                          child: const Text("Submit"),
                        ),

                      ],
                    )

            ]),
                ))));
  }
}
