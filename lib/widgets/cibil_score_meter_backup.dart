import 'dart:math' as math;
import 'package:flutter/material.dart';

class CibilScoreMeter extends StatelessWidget {
  final int score;
  final int maxScore;

  const CibilScoreMeter({
    super.key,
    required this.score,
    this.maxScore = 900,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 115,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Colored meter
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 75,
            child: CustomPaint(
              painter: CibilMeterPainter(score: score),
            ),
          ),

          // Score
          Positioned(
            top: 35,
            child: Text(
              '$score',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF16A765),
              ),
            ),
          ),

          // Out of 900
          Positioned(
            top: 57,
            child: Text(
              'Out of $maxScore',
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black87,
              ),
            ),
          ),

          // GOOD button
          Positioned(
            top: 77,
            child: Container(
              width: 92,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFF19B866),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'GOOD',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CibilMeterPainter extends CustomPainter {
  final int score;

  CibilMeterPainter({
    required this.score,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height - 1,
    );

    final radius = size.width / 2 - 14;

    // Start from left-bottom and go to right-bottom.
    const startAngle = math.pi;
    const totalAngle = math.pi;

    final sections = [
      (
      color: const Color(0xFFE94747),
      from: 0.00,
      to: 0.27,
      ),
      (
      color: const Color(0xFFFF9D25),
      from: 0.29,
      to: 0.46,
      ),
      (
      color: const Color(0xFFFFD52F),
      from: 0.48,
      to: 0.68,
      ),
      (
      color: const Color(0xFF9BD14B),
      from: 0.70,
      to: 0.82,
      ),
      (
      color: const Color(0xFF20B77B),
      from: 0.84,
      to: 1.00,
      ),
    ];

    // Draw colored arc sections
    for (final section in sections) {
      final paint = Paint()
        ..color = section.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 12
        ..strokeCap = StrokeCap.round;

      final rect = Rect.fromCircle(
        center: center,
        radius: radius,
      );

      canvas.drawArc(
        rect,
        startAngle + totalAngle * section.from,
        totalAngle * (section.to - section.from),
        false,
        paint,
      );
    }

    // Score position
    final scoreRatio =
    ((score - 300) / (900 - 300)).clamp(0.0, 1.0);

    final indicatorAngle =
        startAngle + totalAngle * scoreRatio;

    final indicatorCenter = Offset(
      center.dx + radius * math.cos(indicatorAngle),
      center.dy + radius * math.sin(indicatorAngle),
    );

    // White outer circle
    final outerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      indicatorCenter,
      8,
      outerPaint,
    );

    // Green inner circle
    final innerPaint = Paint()
      ..color = const Color(0xFF20B77B)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      indicatorCenter,
      4.5,
      innerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CibilMeterPainter oldDelegate) {
    return oldDelegate.score != score;
  }
}