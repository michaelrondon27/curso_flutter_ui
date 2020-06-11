import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/custom_paint.dart';

class CircularProgressPage extends StatefulWidget {

  @override
  _CircularProgressPageState createState() => _CircularProgressPageState();

}

class _CircularProgressPageState extends State<CircularProgressPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
          child: CustomPaint(
            painter: _MiRadialProgress( 50 ),
          ),
        ),
      )
    );
  
  }

}

class _MiRadialProgress extends CustomPainter {

  final porcentaje;

  _MiRadialProgress(this.porcentaje);

  @override
  void paint(Canvas canvas, Size size) {

    // Circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    final center = new Offset( size.width * 0.5, size.height / 2 );
    final radio = min( size.width * 0.5, size.height * 0.5 );

    canvas.drawCircle(center, radio, paint);
    
    // Arco
    final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = Colors.pink
      ..style = PaintingStyle.stroke;

    // Parte que se debera ir llenando
    double arcAngle = 2 * pi * ( porcentaje / 100 );

    canvas.drawArc(
      Rect.fromCircle( center: center, radius: radio ),
      -pi / 2,
      arcAngle,
      false,
      paintArco
    );

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}
