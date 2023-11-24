import 'package:flutter/material.dart';
class TouchCanvas extends StatefulWidget {
  @override
  _TouchCanvasState createState() => _TouchCanvasState();
}

class _TouchCanvasState extends State<TouchCanvas> {
  double rectX = 0.0;
  double rectY = 0.0;
  double rectWidth = 50.0;
  double rectHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          // Cập nhật vị trí của hình chữ nhật khi người dùng chạm vào màn hình
          rectX = details.globalPosition.dx - rectWidth / 2;
          rectY = details.globalPosition.dy - rectHeight / 2;
        });
      },
      child: CustomPaint(
        painter: RectanglePainter(rectX, rectY, rectWidth, rectHeight),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  final double rectX;
  final double rectY;
  final double rectWidth;
  final double rectHeight;

  RectanglePainter(this.rectX, this.rectY, this.rectWidth, this.rectHeight);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    // Vẽ hình chữ nhật tại vị trí x, y
    canvas.drawRect(
        Rect.fromLTWH(rectX, rectY, rectWidth, rectHeight), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}