import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    @required this.icon,
    @required this.titulo,
    @required this.subtitulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey
  });
  
  @override
  Widget build(BuildContext context) {

    final Color colorBlanco = Colors.white.withOpacity(0.7);
  
    return Stack(
      children: <Widget>[
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon( this.icon, size: 250, color: Colors.white.withOpacity(0.2) )
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 80, width: double.infinity),
            Text(this.subtitulo, style: TextStyle( fontSize: 20, color: colorBlanco )),
            SizedBox(height: 20),
            Text(this.titulo, style: TextStyle( fontSize: 25, color: colorBlanco, fontWeight: FontWeight.bold )),
            SizedBox(height: 20),
            FaIcon( this.icon, size: 80, color: Colors.white )
          ],
        )
      ],
    );
  
  }

}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    Key key,
    @required this.color1,
    @required this.color2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(80) ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            this.color1,
            this.color2
          ]
        )
      )   
    );

  }

}

