import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Ariba'),
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
    );
  }
}
