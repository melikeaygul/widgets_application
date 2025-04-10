import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double _sliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Slider(
              value: _sliderValue,
              min: 1,
              max: 5,
              divisions: 4,
              label: _sliderValue.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Text("Flex Wert: 1"),
              ),
            ),
            Expanded(
              flex: _sliderValue.toInt(),
              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: Text("Flex Wert: $_sliderValue"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Text("Flex Wert: 1"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
