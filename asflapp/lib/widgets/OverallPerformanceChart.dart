import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class OverallPerformanceChart extends StatelessWidget {
  const OverallPerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overall Performance",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  // Green Line
                  LineChartBarData(
                    isCurved: true,
                    color: Colors.green,
                    barWidth: 3,
                    belowBarData: BarAreaData(show: false),
                    spots: const [
                      FlSpot(0, 3),
                      FlSpot(1, 4),
                      FlSpot(2, 6),
                      FlSpot(3, 5),
                      FlSpot(4, 7),
                    ],
                  ),
                  // Red Line
                  LineChartBarData(
                    isCurved: true,
                    color: Colors.red,
                    barWidth: 3,
                    belowBarData: BarAreaData(show: false),
                    spots: const [
                      FlSpot(0, 6),
                      FlSpot(1, 5),
                      FlSpot(2, 4),
                      FlSpot(3, 4.5),
                      FlSpot(4, 3),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}