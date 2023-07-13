import 'dart:math';
import 'package:flutter/material.dart';

class ActivityTimer extends StatelessWidget {
  const ActivityTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25.0,
        horizontal: 10.0,
      ),
      height: 450,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: ArcWidget(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Title",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        Text(
                          "1st Day",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent.withOpacity(0.30),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            child: Text(
              "Drink Herbal Tea For Cramps",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.pinkAccent,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArcWidget extends StatelessWidget {
  const ArcWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: CustomPaint(
              painter: ArcPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final greyPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 35.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final pinkPaint = Paint()
      ..color = Colors.pinkAccent
      ..strokeWidth = 35.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    _drawArcWithCenter(
      canvas,
      greyPaint,
      center: Offset(size.width, 0),
      radius: 150,
    );

    _drawArcWithCenter(
      canvas,
      pinkPaint,
      center: Offset(size.width, 0),
      radius: 150,
      startRadian: 3 * pi / 1.9,
      sweepRadian: pi / 2.9,
    );

    _drawArcWithCenter(
      canvas,
      greyPaint,
      center: const Offset(35, -125),
      radius: 20,
      startRadian: 3 * pi / 1.9,
      sweepRadian: pi / 180,
    );
  }

  void _drawArcWithCenter(
    Canvas canvas,
    Paint paint, {
    required Offset center,
    required double radius,
    startRadian = 2 * pi,
    sweepRadian = 3 * pi / 2,
  }) {
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startRadian,
      sweepRadian,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
