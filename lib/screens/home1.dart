import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  final TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.white,
  );
  final _widgetStyle = ({@required Widget child}) => child
      .padding(vertical: 15, horizontal: 25)
      .decorated(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,

      colors: [
        Color(0xff3a1c71 ),
        Color(0xffd76d77),
        Color(0xffffaf7b ),
      ],
    ),
  ).alignment(Alignment.center);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Ariba'),
          centerTitle: true,
          brightness: Brightness.dark,
          backgroundColor: Colors.purple.shade900),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('styled_widget', style: GoogleFonts.sahitya(textStyle: _textStyle))
            // .rotate(angle: -0.1)
                .padding(right: 15),


          ],
        ).parent(_widgetStyle)

          ,
        ),
      ),
    );
  }
}
