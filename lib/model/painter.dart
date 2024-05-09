import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Painter extends CustomPainter {
  late String figura;
  final logger = Logger();

  Painter(this.figura);

  @override
  void paint(Canvas canvas, Size size) {
    if (figura.isNotEmpty) {
      switch (figura.toLowerCase()) {
        case "circulo":
        case "círculo":
        case "circulo ":
        case "círculo ":
          circulo(canvas, size);
          break;

        case "cuadrado":
        case "cuadrado ":
        case "cuadro":
        case "cuadro ":
          cuadrado(canvas, size);
          break;

        case "triangulo":
        case "triangulo ":
        case "triángulo":
        case "triángulo ":
          triangulo(canvas, size);
          break;

        case "rectangulo":
        case "rectangulo ":
        case "rectángulo":
        case "rectángulo ":
          rectangulo(canvas, size);
          break;

        case "line":
        case "line ":
        case "caro":
        case "caro ":
        case "corazon":
        case "corazon ":
        case "corazón ":

          line(canvas, size);
          break;

        default:
          noEncontrado(canvas, size);
      }
    }
  }

  void circulo(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final paint2 = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2 - 50), 100, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 - 50), 90, paint2);
  }

  void cuadrado(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;
    final rect =
        Rect.fromLTWH(size.width / 2 - 100, size.height / 2 - 150, 200, 200);

    final paint2 = Paint()
      ..color = Color.fromARGB(207, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;
    final rect2 =
        Rect.fromLTWH(size.width / 2 - 90, size.height / 2 - 140, 180, 180);

    canvas.drawRect(rect, paint);
    canvas.drawRect(rect2, paint2);
  }

  void triangulo(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

      final paint2 = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(size.width/2+1, size.height/2-180) 
      ..lineTo(size.width/2-130, size.height/2+15)
      ..lineTo(size.width/2 + 130, size.height/2+15)
      ..lineTo(size.width/2-1 , size.height/2-180);
      
    final Path path2 = Path()
      ..moveTo(size.width/2+1, size.height/2-150) 
      ..lineTo(size.width/2-100, size.height/2)
      ..lineTo(size.width/2 + 100, size.height/2)
      ..lineTo(size.width/2-1, size.height/2-150);

    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);
  }

  void rectangulo(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;


    final paint2 = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(size.width / 2 - 110, size.height / 2 - 135, 220, 145);

    final rect2 = Rect.fromLTWH(size.width / 2 - 100, size.height / 2 - 125, 200, 125);
    canvas.drawRect(rect, paint);

    canvas.drawRect(rect2, paint2);
  }

  void line(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

      final paint2 = Paint()
      ..color = const Color.fromARGB(255, 228, 194, 213)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

      double width = size.width;
      double height = size.height-130;

      Path path = Path();
      path.moveTo(0.5 * width, height * 0.35);
      path.cubicTo(0.1 * width, height * 0.1, -0.25 * width, height * 0.6,
          0.5 * width, height);
      path.moveTo(0.5 * width, height * 0.35);
      path.cubicTo(0.9 * width, height * 0.1, 1.25 * width, height * 0.6,
          0.5 * width, height);

      canvas.drawPath(path, paint);
      canvas.drawPath(path, paint2);
  }

  void noEncontrado(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      text: const TextSpan(
        text: 'Figura no encontrada',
        style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 20),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
        canvas, Offset(size.width / 2 - 95, size.height / 2 - 80));
  }

  @override
  bool shouldRepaint(Painter oldDelegate) => true;
}
