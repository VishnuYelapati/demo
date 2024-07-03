import 'package:flutter/material.dart';
import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart';

class Speedometer extends StatelessWidget {
  const Speedometer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yocto Sample Gauge",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Roboto",
        useMaterial3: true,
      ),
      home: const GaugePage(),
    );
  }
}

class GaugePage extends StatefulWidget {
  const GaugePage({super.key});

  @override
  State<GaugePage> createState() => _GaugePageState();
}

class _GaugePageState extends State<GaugePage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: MediaQuery.of(context).size.height * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Stack(
          children: [
            RadialGauge(
              yCenterCoordinate: 0.6,
              track: RadialTrack(
                start: 0,
                end: 100,
                thickness: 30,
                trackStyle: TrackStyle(
                    labelStyle: Theme.of(context).textTheme.labelSmall),
              ),
              shapePointer: [
                RadialShapePointer(
                  value: value,
                  isInteractive: true,
                  color: Colors.blue.shade800,
                  width: 22,
                  onChanged: (val) => setState(() {
                    value = val;
                  }),
                )
              ],
              valueBar: [
                RadialValueBar(
                  value: value,
                  valueBarThickness: 30,
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                "PWM",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.1),
              child: Text(
                value.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
