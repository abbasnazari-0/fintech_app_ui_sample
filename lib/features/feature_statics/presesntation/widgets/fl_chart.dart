import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample7 extends StatelessWidget {
  LineChartSample7({
    super.key,
    Color? line1Color,
    Color? line2Color,
    Color? betweenColor,
  })  : line1Color = line1Color ?? Colors.blue,
        line2Color = line2Color ?? Colors.blue.withAlpha(160),
        betweenColor = betweenColor ?? Colors.blue.withOpacity(0.5);

  final Color line1Color;
  final Color line2Color;
  final Color betweenColor;

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Sat';
        break;
      case 1:
        text = 'Sun';
        break;
      case 2:
        text = 'Mon';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Wed';
        break;
      case 5:
        text = 'Thu';
        break;

      default:
        text = '';
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  String leftTitle(double value) {
    if (value == 3) {
      return '\$3000';
    } else if (value == 6) {
      return '\$6000';
    } else if (value == 9) {
      return '\$9000';
    } else if (value == 12) {
      return '\$90000';
    }
    return '';
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 8);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        leftTitle(value),
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 18,
          top: 10,
          bottom: 10,
        ),
        child: LineChart(
          LineChartData(
            lineTouchData: const LineTouchData(enabled: false),
            lineBarsData: [
              LineChartBarData(
                spots: const [
                  FlSpot(0, 0),
                  FlSpot(0.6, 2),
                  FlSpot(1.5, 0.3),
                  FlSpot(2.5, 6.01),
                  FlSpot(3.4, 6),
                  FlSpot(4, 10.2),
                  FlSpot(4.5, 8),
                  FlSpot(5, 12.3),
                  FlSpot(5.4, 11),
                ],
                isCurved: true,
                barWidth: 2,
                color: line2Color,
                dotData: const FlDotData(
                  show: false,
                ),
              ),
            ],
            betweenBarsData: [
              BetweenBarsData(
                fromIndex: 0,
                toIndex: 0,
                color: betweenColor,
              )
            ],
            minY: 0,
            borderData: FlBorderData(
              show: false,
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: bottomTitleWidgets,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitleWidgets,
                  interval: 1,
                  reservedSize: 50,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              horizontalInterval: 1,
              checkToShowHorizontalLine: (double value) {
                return value == 0 ||
                    value == 3 ||
                    value == 6 ||
                    value == 9 ||
                    value == 12;
              },
            ),
          ),
        ),
      ),
    );
  }
}
