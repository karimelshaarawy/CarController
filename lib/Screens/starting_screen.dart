import 'package:first_app/Screens/calibration_screen.dart';
import 'package:first_app/Screens/live_plot_screen.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hand Controlled Carrera'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalibrationScreen()),
                );
              },
              child: Text('Calibration'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LivePlotScreen()),
                );
              },
              child: Text('Live Data'),
            ),
          ],
        ),
      ),
    );
  }
}
