import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {

  final String texto;
  final double alto;
  final double ancho;

  BotonNaranja({
    @required this.texto,
    this.alto = 50,
    this.ancho = 150
  });
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      alignment: Alignment.center,
      width: this.ancho,
      height: this.alto,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.orange
      ),
      child: Text('$texto', style: TextStyle( color: Colors.white ))
    );
  
  }

}
