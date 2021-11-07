import 'dart:async';
  import 'package:flutter/material.dart';
  import 'home.dart';
  import 'package:firebase_core/firebase_core.dart';

  class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
  }

  class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
  return  SplashScreen2Sub();
  }
  }

  class SplashScreen2Sub extends StatefulWidget {
  @override
  _SplashScreen2SubState createState() => _SplashScreen2SubState();
  }

  class _SplashScreen2SubState extends State<SplashScreen2Sub> {
  bool _a = false;

  @override
  void initState() {
  super.initState();
  Timer(Duration(milliseconds: 700), () {
  setState(() {
  _a = !_a;
  });
  });
  Timer(Duration(milliseconds: 2000), () {
  Navigator.of(context)
      .pushReplacement(SlideTransitionAnimation(VerticalCard4()));
  });
  }

  @override
  void dispose() {
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {

  double _height = MediaQuery.of(context).size.height;
  double _width = MediaQuery.of(context).size.width;

  return Scaffold(

  backgroundColor: Colors.white,
  body: Stack(
  children: [
  AnimatedContainer(
  duration: Duration(milliseconds: 2000),
  curve: Curves.fastLinearToSlowEaseIn,
  width: _a ? _width : 0,
  height: _height,
  color: Colors.black,
  ),
  Center(
  child: Text(
  'APSOLUT',
  style: TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 30,
  color: Colors.white,
  ),
  ),
  ),
  ],
  ),
  );
  }
  }

      class SlideTransitionAnimation extends PageRouteBuilder {
      final Widget page;

      SlideTransitionAnimation(this.page)
          : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: Duration(milliseconds: 2000),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
      curve: Curves.fastLinearToSlowEaseIn,
      parent: animation,
      );
      return SlideTransition(
      position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
          .animate(animation),
      textDirection: TextDirection.rtl,
      child: page,
      );
      });
      }




      void main()async{
  // await Firebase.initializeApp();
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: SplashScreen2()));

  }
