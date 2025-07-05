import 'package:flutter/material.dart';

class BackgroundCirclesPainterWidget extends StatelessWidget {
  final double height;
  final Color baseColor;

  const BackgroundCirclesPainterWidget({
    super.key,
    required this.height,
    this.baseColor = const Color(0xffF9A826),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Stack(
        children: [
          Container(height: height, width: double.infinity, color: baseColor),
          Positioned(
            top: 20,
            left: 60,
            child: ClipOval(
              child: Container(
                width: 60,
                height: 60,
                color: Color(0xffFFB133).withAlpha(100),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 150,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                color: baseColor.withValues(alpha: 0.4),
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 50,
            child: ClipOval(
              child: Container(
                width: 80,
                height: 80,
                color: baseColor.withValues(alpha: 0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
