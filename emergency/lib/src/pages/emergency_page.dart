import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/boton.dart';
import '../widgets/header.dart';

class EmergencyPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: Boton()
      )
    );
  
  }

}

class PageHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      subtitulo: 'Haz Solicitado',
      titulo: 'Asistencia Médica',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2)
    );
  
  }

}
