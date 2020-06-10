import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
        height: 300.0,
        color: Color(0xff615AAB)
    );
  
  }

}

class HeaderBordersRendondeados extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
        height: 300.0,
        decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70)
          )
        )
    );
  
  }

}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter()
      ),
    );
  
  }

}

class _HeaderDiagonalPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter()
      ),
    );
  
  }

}

class _HeaderTriangularPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderPico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter()
      ),
    );
  
  }

}

class _HeaderPicoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderCurvo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter()
      ),
    );
  
  }

}

class _HeaderCurvoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWave extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter()
      ),
    );
  
  }

}

class _HeaderWavePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWaveGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter()
      ),
    );
  
  }

}

class _HeaderWaveGradientPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      center: Offset(0.0, 55.0),
      radius: 180
    );

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color> [
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA)
      ],
      stops: [
        0.0,
        0.5,
        1.0
      ]
    );
    
    final paint = new Paint()..shader = gradiente.createShader(rect);

    // Propiedades
    // paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
