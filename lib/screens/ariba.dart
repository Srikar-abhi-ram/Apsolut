import 'package:flutter/material.dart';
import 'package:apsolute/screens/ariba_subscreens/editariba.dart';
import 'package:apsolute/screens/ariba_subscreens/viewariba.dart';

import 'home1.dart';

class Ariba extends StatefulWidget {
  @override
  _AribaState createState() => _AribaState();
}

class _AribaState extends State<Ariba> {
  int _currentIndex = 1;
  final List<Widget> _children = [ViewAriba(), Home1(), Editariba()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.view_column), title: new Text("View")),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.home), title: new Text("Home")),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.edit), title: new Text("edit")),
            ]));
  }
}
