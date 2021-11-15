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
      body:
       
        Stack(
          children: [
            Padding(              
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 100.0),
              child: Card(
                child: LineChart(
                  
                  LineChartData(minX: 0,maxX: 4,minY: 0,maxY: 7,
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
                         FlSpot(1,1.8 ),
                         FlSpot(2,1.8 ),
                         FlSpot(3,1.8 ),
                   ],
                   isCurved: true,
                        barWidth: 3,
                        dotData: FlDotData(show: true),
                        
                   ),
                 LineChartBarData(
                   spots: [
                        FlSpot(1,2.7 ),
                         FlSpot(2,2.7),
                         FlSpot(3,2.7 ),
                   ],
                   isCurved: true,
                        barWidth: 3,
                        dotData: FlDotData(show: true),
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
                        dotData: FlDotData(show: true),
                        colors: [
                Colors.amber
                        ]
                   )
                         ]
                         )),
              ),
            ),
       Padding(
         padding: const EdgeInsets.fromLTRB(50,0, 0, 50),
         child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(children: [
                    Row(
      children: <Widget>[
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          "Capacity ",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, ),
        )
      ],
                  ),
                               Row(
      children: <Widget>[
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          " BreakEven ",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold,  ),
        )
      ],
                  ),
                               Row(
      children: <Widget>[
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.amber,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          "Total Pipe  ",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, ),
        )
      ],
                  ),
                  //the row widget inside the row widget ends here      
                  ],)          
                   ],
              ),
       ),
          ]
          
          ),
      );
  
  }
}
