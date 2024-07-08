import 'package:flutter/material.dart';

class SquareFace extends StatelessWidget {
  final Color color;

  const SquareFace({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: color,
      child: const FlutterLogo(
        size: 50,
      ),
    );
  }
}
