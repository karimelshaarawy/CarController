import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../Collections/speed_data.dart';
import '../Controllers/data_stream_controller.dart';
import '../Services/isar_service.dart';

class LivePlotScreen extends StatefulWidget {
  @override
  _LivePlotScreenState createState() => _LivePlotScreenState();
}

class _LivePlotScreenState extends State<LivePlotScreen> {
  final IsarService _isarService = IsarService();

  List<FlSpot> speedData = [];
  List<FlSpot> speedData2 = [];

  StreamSubscription<int>? speedSubscription;
  StreamSubscription<int>? speedSubscription2;

  final DataStreamController _dataStreamController = DataStreamController();

  double xValue = 0;

  @override
  void initState() {
    super.initState();

    speedData = [FlSpot(0, 0)];
    speedData2 = [FlSpot(0, 0)];

    speedSubscription = _dataStreamController.currentActivationStream().listen((value) {
      int speed = _dataStreamController.mapToSpeed(value, 0, 4000);
      _saveSpeedData(1, speed);
      setState(() {
        if (speedData.length > 50) {
          speedData.removeAt(0); // Keep the latest 50 data points
        }
        speedData.add(FlSpot(xValue, speed.toDouble()));
      });
      xValue++;
    });
    speedSubscription2 = _dataStreamController.currentActivationStream().listen((value) {
      int speed = _dataStreamController.mapToSpeed(value, 0, 4000);
      _saveSpeedData(2, speed);
      setState(() {
        if (speedData2.length > 50) {
          speedData2.removeAt(0); // Keep the latest 50 data points
        }
        speedData2.add(FlSpot(xValue, speed.toDouble()));
      });
    });
  }

  Future<void> _saveSpeedData(int carId, int speed) async {
    final speedData = SpeedData(carId, speed, DateTime.now());
    await _isarService.saveSpeedData(speedData);
  }

  @override
  void dispose() {
    speedSubscription?.cancel();
    speedSubscription2?.cancel();
    print("disposed");
    super.dispose();
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
    if (value % 1 != 0) {
      return Container();
    }
    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: min(15, 18 * chartWidth / 300),
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(meta.formattedValue, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta, double chartWidth) {
    final style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: min(18, 18 * chartWidth / 300),
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(meta.formattedValue, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Speed Plot'),
      ),
      body: Center(

        child: AspectRatio(aspectRatio: 1,
          child:
        LayoutBuilder(
          builder: (context, constraints){
        return LineChart(
          LineChartData(
            minX: xValue<50? 0:xValue-50,
            maxX: xValue<50? 50:xValue,
            minY: 0,
            maxY: 100,
            lineTouchData: const LineTouchData(enabled: false),
            clipData: const FlClipData.all(),
            lineBarsData: [
              speedLine(speedData, Colors.blue),
              speedLine(speedData2, Colors.red),
            ],
            titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) =>
                        leftTitleWidgets(value, meta, constraints.maxWidth),
                    reservedSize: 56,
                  ),
                  drawBelowEverything: true,
                ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) =>
                      bottomTitleWidgets(value, meta, constraints.maxWidth),
                  reservedSize: 56,
                  interval: 10,
                ),
                drawBelowEverything: true,
              ),
              rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(show: true),
            borderData: FlBorderData(show: false),
          ),
        );
          }),
        )
      ),
    );
  }
  LineChartBarData speedLine(List<FlSpot> points,Color color) {
    return LineChartBarData(
      spots: points,
      dotData: const FlDotData(
        show: false,
      ),
      gradient: LinearGradient(
        colors: [color.withOpacity(0.4), color],
        stops: const [0.1, 1.0],
      ),
      barWidth: 3,
      isCurved: false,
    );
  }


}