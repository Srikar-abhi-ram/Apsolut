import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'ariba_subscreens/aribacharttitle.dart';

class Home1 extends StatefulWidget {
   final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  _Home1State createState() => _Home1State();
  }

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/homebackground.jpg'),
        
          fit: BoxFit.cover
          )),
        child:Padding(padding: const EdgeInsets.fromLTRB(0, 90, 0, 300.0),

          child: LineChart(LineChartData(minX: 0,maxX: 4,minY: 0,maxY: 7,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(show: true,getDrawingHorizontalLine: (value){
            return FlLine(color: Colors.white,strokeWidth: 1);
          },
          drawVerticalLine: true,
          getDrawingVerticalLine: (value) {
              return FlLine(
                color: Colors.white,
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
           FlSpot(1,1),
            FlSpot(2,1),
            FlSpot(3,1),
       ],
       
       isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
       )
   ]
   )),
        
   ),
  );
  
  }
}