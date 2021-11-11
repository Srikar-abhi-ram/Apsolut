import 'package:apsolute/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'ariba_subscreens/aribacharttitle.dart';

class Home1 extends StatefulWidget {
   final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
    const Color(0xFFD50000),
    const Color(0xFFFF6D00),

    
  ];
  @override
  _Home1State createState() => _Home1State();
  }

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: relay1,
            title: Text('Ariba Forecast'),
            centerTitle: true,
            brightness: Brightness.dark,
          ),
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(''),
        
          fit: BoxFit.cover
          )),
        child:Padding(
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 300.0),

          child: LineChart(LineChartData(minX: 0,maxX: 4,minY: 0,maxY: 7,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(show: true,getDrawingHorizontalLine: (value){
            return FlLine(color: Colors.black,strokeWidth: 1);
          },
          drawVerticalLine: true,
          getDrawingVerticalLine: (value) {
              return FlLine(
                color: Colors.black,
                strokeWidth: 1,
              );
            },
          ),
           borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 3),
            
          ),
   lineBarsData: [
     LineChartBarData(
       spots: [
         FlSpot(1,2 ),
         FlSpot(2,2 ),
         FlSpot(3,2 ),
       ],
       isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
        
       ),
     LineChartBarData(
       spots: [
          FlSpot(1,0 ),
         FlSpot(2,5),
         FlSpot(3,6 ),
       ],
       isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
        colors: [
          Colors.red
        ]
        

       ),
       LineChartBarData(
           spots: [  
           FlSpot(1,1),
            FlSpot(2,1),
            FlSpot(3,1),
       ],
       
       isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
        colors: [
          Colors.amber
        ]
       )
   ]
   )),
        
   ),
      )
  );
  
  }
}