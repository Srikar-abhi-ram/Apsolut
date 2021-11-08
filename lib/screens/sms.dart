import 'package:flutter/material.dart';
import 'package:apsolute/screens/sms_subscreens/viewsms.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:apsolute/screens/sms_subscreens/editsms.dart';

class SMS extends StatefulWidget {
  @override
  _SMSState createState() => _SMSState();
}

class _SMSState extends State<SMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('SMS'),
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
                    builder: (context) => ViewSMS(),
                  ));
            },
          ),
          TextButton(
            child: Text("edit", style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditSMS(),
                  ));
            },
          ),
        ],
        height: 50,
      ),
    );
  }
}
