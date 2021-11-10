import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class LineTitles {
  static getTitleData() =>FlTitlesData(
    show: true,
    bottomTitles:SideTitles(
      showTitles: true,
    reservedSize: 22,
    
    getTitles: (value){
      switch (value.toInt()) {
        case 1:
          return 'OCT';
          break;
         case 2:
          return 'NOV';
          break;
           case 3:
          return 'DEC';
          break;
           case 4:
          return '';
          break;
      }
    },
    margin: 8,
    ) ,
    leftTitles: SideTitles(
          showTitles: true,
          
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0';
              case 1:
                return '50';
              case 2:
                return '100';
                case 3:
                return '150';
              case 4:
                return '200';
              case 5:
                return '250';
                case 6:
                return '300';
              
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
        topTitles: SideTitles(
          showTitles: true,
          
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '';
              case 2:
                return '';
              case 5:
                return '';
            }
            return '';
          },
          reservedSize: 5,
          margin: 12,
        ),
        rightTitles: SideTitles(
          showTitles: true,
        
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '';
              case 3:
                return '';
              case 5:
                return '';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
  );
  }