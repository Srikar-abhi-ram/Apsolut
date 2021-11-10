import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apsolute/colors.dart';


class ViewAriba extends StatefulWidget {
  @override
  _ViewAribaState createState() => _ViewAribaState();
}

class _ViewAribaState extends State<ViewAriba> {

  final TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: Colors.white,
  );
  final TextStyle _textStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.white,
  );
  String month = 'Oct';
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
  final Stream<QuerySnapshot> _aribaStream =
      FirebaseFirestore.instance.collection('Ariba').snapshots();
  CollectionReference _ariba = FirebaseFirestore.instance.collection('Ariba');
//  Stream<QuerySnapshot> _aribaStream=_ariba.doc('Oct').collection('free').doc('freetotal').snapshots();

  CollectionReference _aribaFree = FirebaseFirestore.instance
      .collection('Ariba')
      .doc('Oct')
      .collection('free');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false,
        // backgroundColor: Colors,
        appBar: AppBar(
            backgroundColor: Colors.purple.shade900,
            title: Text('View'),
            centerTitle: true,
            brightness: Brightness.dark,
           ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                "Select Month ",
                style: TextStyle(
                    color: Color(0xffcc2b5e),
                    fontWeight: FontWeight.bold,
                    fontSize: 29),
              ),
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 300,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(13)),
                 gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,

                   colors: [
                     Roseanna1,
                     Roseanna2
                   ],
                 ),
               ),
                child: Table(
                  border: TableBorder(
                      verticalInside: BorderSide(
                          width: 1, color: pinklet1, style: BorderStyle.solid)
                  ),
                  //border: TableBorder.all(),
                  //defaultColumnWidth:FlexColumnWidth(1.0) ,
                  columnWidths: {
                    0: FixedColumnWidth(80),
                    1: FixedColumnWidth(80)
                  },
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8,8,0,15),
                        child: Text('Load',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,8,0,8),
                        child: Text(
                          "FT",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,8,0,8),
                        child: Text(
                          'Free',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    TableRow(
                      children: [
                        Container(
                            child: Table(
                          children: [
                            TableRow(
                                children: [
                              Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '49',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ]
                            )
                          ],
                        )),
                        Container(
                            child: Table(
                              children: [
                                TableRow(
                                    children: [
                                      Text(
                                        '0',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                )
                              ],
                            )),

                        Container(
                            child: Table(
                              children: [
                                TableRow(
                                    children: [
                                      Text(
                                        '5',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '77',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,

                      colors: [
                        Color(0xffff9966),
                        Color(0xffff5e62),
                      ],
                    ),
                  ),
                  child: Table(

                    children: [
                      TableRow(
                          children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30,0,0,8),
                          child: Text(
                            'PIPE ',
                            style:GoogleFonts.sahitya(textStyle: _textStyle),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,8,8),
                          child: Text(
                            'VALUES',
                            style: GoogleFonts.sahitya(textStyle: _textStyle),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ]),
                      TableRow(
                          children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0,8),
                          child: Text('Delivery Pipe',
                            style:GoogleFonts.sahitya(textStyle: _textStyle1),),
                        ),
                        Text(
                          '49',style:GoogleFonts.sahitya(textStyle: _textStyle1),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0,8),
                          child: Text('Break Even',style:GoogleFonts.sahitya(textStyle: _textStyle1)),
                        ),
                        Text(
                          '94',style:GoogleFonts.sahitya(textStyle: _textStyle1),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0,8),
                          child: Text('Total Pipe',style:GoogleFonts.sahitya(textStyle: _textStyle1)),
                        ),
                        Text('49',style:GoogleFonts.sahitya(textStyle: _textStyle1),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      TableRow(
                          children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0,8),
                          child: Text('Capacity', style:GoogleFonts.sahitya(textStyle: _textStyle1)),
                        ),
                        Text(
                          '126',style:GoogleFonts.sahitya(textStyle: _textStyle1),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              /*StreamBuilder(
                  stream: _aribaFree.doc('freetotal').snapshots(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    var document = snapshot.data;

                    return Text(document["free-emp"].toString());
                  })*/
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
              return Text("Working out");*/ /* ListView.builder(itemCount: 3,
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
                );*/ /*
        })*/
                //  ],
                ),
          ),
        ));
  }
}
