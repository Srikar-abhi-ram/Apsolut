import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ViewAriba extends StatefulWidget {

  @override
  _ViewAribaState createState() => _ViewAribaState();
}

class _ViewAribaState extends State<ViewAriba> {
 static String  month='Oct';
  List monthsList=  ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
  final Stream<QuerySnapshot> _aribaStream = FirebaseFirestore.instance.collection('Ariba').snapshots();
  CollectionReference _ariba = FirebaseFirestore.instance.collection('Ariba');
  CollectionReference _aribaFree = FirebaseFirestore.instance.collection('Ariba').doc(month).collection('free');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
          Padding(
            padding: EdgeInsets.all(70),
            child: Column(
         /* children: [
              Text("View ariba page"),*/
        children:[
            Text("Select Month ",
              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 29
            ),),
            SizedBox(height: 30,),
            DropdownButton(
              hint: Text('Select Month'),
              value: month,
              onChanged: (newValue){
                setState(() {
                  month=newValue;
                  print(month);
                });
              },
              items: monthsList.map((valueItem) {
                return DropdownMenuItem(
                    value:valueItem,
                    child: Text(valueItem));
              }).toList(),
            ),
              SizedBox(height: 30,),
            StreamBuilder(
                stream: _aribaFree.doc('freetotal').snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if(!snapshot.hasData)
                    {
                      return Center(child: CircularProgressIndicator(),);
                    }

                  var document= snapshot.data;


                  return  Text(document["free-emp"].toString());
                }

            )

        ]
/*
        StreamBuilder<QuerySnapshot>(
        stream: _aribaStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
              child: CircularProgressIndicator(
                 backgroundColor: Colors.grey,
                strokeWidth: 6, color: Colors.blue,)
                ,);
            }
            return Text("Working out");*//* ListView.builder(itemCount: 3,
                itemBuilder: (context, i) {
                  return (
                      Card(
                        color: Colors.green[200],
                        margin: EdgeInsets.fromLTRB(50, 10, 50, 11),
                        child: Padding(
                            padding: EdgeInsets.all(6),
                            child: ElevatedButton(
                              child: FutureBuilder(
                                  builder: (BuildContext context,
                                      AsyncSnapshot<String> text) {
                                    if (text.hasData) {
                                      return Text(text.data.toString());
                                    }
                                    return Text(snapshot.data.docs[i].id);
                                  }),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),

                                ),),
                              onPressed: () {},
                              )
                          ),
                        )

                    );
                  }
              );*//*
        })*/
        //  ],
        ),
          )
    );

  }



}