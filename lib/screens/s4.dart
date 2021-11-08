import 'package:flutter/material.dart';
import 'package:apsolute/screens/s4_subscreens/viewS4.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:apsolute/screens/s4_subscreens/editS4.dart';

class S4 extends StatefulWidget {
  @override
  _S4State createState() => _S4State();
}

class _S4State extends State<S4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('S4'),
          centerTitle: true,
          brightness: Brightness.dark,
          backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 310,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black87,
        backgroundColor: Colors.transparent,
        items: [
          TextButton(
            child: Text(
              "View",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewS4(),
                  ));
            },
          ),
          TextButton(
            child: Text("edit", style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditS4(),
                  ));
            },
          ),
        ],
        height: 50,
      ),
    );
  }
}
