import 'package:flutter/material.dart';

class CalibrationScreen extends StatefulWidget {
  @override
  _CalibrationScreenState createState() => _CalibrationScreenState();
}

class _CalibrationScreenState extends State<CalibrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _param1Controller = TextEditingController();
  final TextEditingController _param2Controller = TextEditingController();
  bool _isCalibrating = false;
  String _calibrationResult = '';

  void _startCalibration() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isCalibrating = true;
      });

      // Simulate a calibration process with a delay
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _isCalibrating = false;
          _calibrationResult = 'Calibration complete with parameters: '
              'Param1: ${_param1Controller.text}, Param2: ${_param2Controller.text}';
        });
      });
    }
  }

  @override
  void dispose() {
    _param1Controller.dispose();
    _param2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calibration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _param1Controller,
                decoration: InputDecoration(labelText: 'Parameter 1'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value for Parameter 1';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _param2Controller,
                decoration: InputDecoration(labelText: 'Parameter 2'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value for Parameter 2';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              _isCalibrating
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                onPressed: _startCalibration,
                child: Text('Start Calibration'),
              ),
              SizedBox(height: 16.0),
              Text(_calibrationResult),
            ],
          ),
        ),
      ),
    );
  }
}