import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wave Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wave Demo'),
      ),
      body: Center(
        child: WaveWidget(
          config: CustomConfig(
            gradients: [
              [Colors.limeAccent, Colors.blue.shade200],
              [Colors.blue.shade200, Colors.blue.shade100],
            ],
            durations: [35000, 19440],
            heightPercentages: [0.25, 0.30],
            blur: MaskFilter.blur(BlurStyle.solid, 10),
            gradientBegin: Alignment.bottomLeft,
            gradientEnd: Alignment.topRight,
          ),
          waveAmplitude: 0,
          size: Size(double.infinity, double.infinity),
        ),
      ),
    );
  }
}
