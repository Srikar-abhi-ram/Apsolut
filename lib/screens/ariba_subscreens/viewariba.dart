import 'package:firebase_database/firebase_database.dart';
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

  String _displayText ="Results";
  final _databse = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activateListners();
  }
  void _activateListners(){
    _databse.child('Katragadda, Ajay Kumar/0/Stream').onValue.listen((event) {
      final String description = event.snapshot.value;
      setState(() {
        _displayText ='so the incharge of the project GEA is :$description';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: relay1,
              title: Text('View'),
              centerTitle: true,
              brightness: Brightness.dark,
            ),
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child:Stack(children: [
          Text(_displayText),
        ListView.builder(
        itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
        itemCount: data.length,
      )
     /* SingleChildScrollView(
              child: Column(
                  children: [
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
                          padding: EdgeInsets.fromLTRB(8, 8, 0, 15),
                          child: Text('Load',
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Text(
                            "FT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Text(
                            'Free',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '49',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
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
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '0',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
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
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '77',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
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
                                padding: EdgeInsets.fromLTRB(30, 0, 0, 8),
                                child: Text(
                                  'PIPE ',
                                  style: GoogleFonts.sahitya(
                                      textStyle: _textStyle),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                                child: Text(
                                  'VALUES',
                                  style: GoogleFonts.sahitya(
                                      textStyle: _textStyle),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ]),
                        TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
                                child: Text('Delivery Pipe',
                                  style: GoogleFonts.sahitya(
                                      textStyle: _textStyle1),),
                              ),
                              Text(
                                '49', style: GoogleFonts.sahitya(
                                  textStyle: _textStyle1),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
                            child: Text('Break Even',
                                style: GoogleFonts.sahitya(
                                    textStyle: _textStyle1)),
                          ),
                          Text(
                            '94',
                            style: GoogleFonts.sahitya(textStyle: _textStyle1),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
                            child: Text('Total Pipe',
                                style: GoogleFonts.sahitya(
                                    textStyle: _textStyle1)),
                          ),
                          Text('49',
                            style: GoogleFonts.sahitya(textStyle: _textStyle1),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                        TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 8),
                                child: Text('Capacity',
                                    style: GoogleFonts.sahitya(
                                        textStyle: _textStyle1)),
                              ),
                              Text(
                                '126', style: GoogleFonts.sahitya(
                                  textStyle: _textStyle1),
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

              ]

              ),
            ),*/

        ])
      ),
    );
      
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Item A0.1'),
          Entry('Item A0.2'),
        ],
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
