import 'dart:math' as math;
import 'package:flutter/material.dart';

class CibilScoreMeter extends StatelessWidget {
  final int score;
  final int maxScore;

  CibilScoreMeter({
    super.key,
    required this.score,
    this.maxScore = 900,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 125,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [

          // Colored meter
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 85,
            child: CustomPaint(
              painter: CibilMeterPainter(
                score: score,
              ),
            ),
          ),

          // Score
          Positioned(
            top: 42,
            child: Text(
              '$score',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Color(0xFF16B866),
              ),
            ),
          ),

          // Rating
          Positioned(
            top: 82,
            child: Text(
              'Excellent',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xFF111827),
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
      size.height - 5,
    );

    final radius = size.width / 2 - 18;

    final startAngle = math.pi;
    final totalAngle = math.pi;

    final sections = [
      (
      color: Color(0xFFE94747),
      from: 0.00,
      to: 0.27,
      ),
      (
      color: Color(0xFFFF9D25),
      from: 0.29,
      to: 0.46,
      ),
      (
      color: Color(0xFFFFD52F),
      from: 0.48,
      to: 0.68,
      ),
      (
      color: Color(0xFF9BD14B),
      from: 0.70,
      to: 0.82,
      ),
      (
      color: Color(0xFF20B77B),
      from: 0.84,
      to: 1.00,
      ),
    ];

    // Draw colored arc sections
    for (final section in sections) {
      final paint = Paint()
        ..color = section.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10
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
      9,
      outerPaint,
    );

    // Green border
    final borderPaint = Paint()
      ..color = Color(0xFF20B77B)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    canvas.drawCircle(
      indicatorCenter,
      7,
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(
      covariant CibilMeterPainter oldDelegate,
      ) {
    return oldDelegate.score != score;
  }
}