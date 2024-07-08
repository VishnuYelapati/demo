import 'package:demo/animation/square_face.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Cube extends StatefulWidget {
  const Cube({super.key});

  @override
  State<Cube> createState() => _CubeState();
}

class _CubeState extends State<Cube> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(2, 2, 0.001)
            ..rotateX(_controller.value * 2 * math.pi)
            ..rotateY(_controller.value * 2 * math.pi)
            ..rotateZ(_controller.value * 2 * math.pi),
          child: Stack(
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..translate(0.0, 0.0, 100.0),
                child: const SquareFace(color: Colors.blue),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..translate(0.0, 0.0, -100.0),
                child: const SquareFace(color: Colors.red),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(-100.0, 0.0, 0.0)
                  ..rotateY(-math.pi / 2),
                child: const SquareFace(color: Colors.green),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(100.0, 0.0, 0.0)
                  ..rotateY(math.pi / 2),
                child: const SquareFace(color: Colors.yellow),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(0.0, -100.0, 0.0)
                  ..rotateX(-math.pi / 2),
                child: const SquareFace(color: Colors.orange),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(0.0, 100.0, 0.0)
                  ..rotateX(math.pi / 2),
                child: const SquareFace(color: Colors.purple),
              ),
            ],
          ),
        );
      },
    );
  }
}
