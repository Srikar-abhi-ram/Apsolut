import 'package:flutter/material.dart';
import 'package:apsolute/screens/dev_subscreens/viewdev.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:apsolute/screens/dev_subscreens/editdev.dart';

class Dev extends StatefulWidget {
  @override
  _DevState createState() => _DevState();
}

class _DevState extends State<Dev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Dev'),
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
                    builder: (context) => ViewDev(),
                  ));
            },
          ),
          TextButton(
            child: Text("edit", style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditDev(),
                  ));
            },
          ),
        ],
        height: 50,
      ),
    );
  }
}
