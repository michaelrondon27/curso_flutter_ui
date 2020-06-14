import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/header.dart';

class EmergencyPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: IconHeader(
        icon: FontAwesomeIcons.plus,
        subtitulo: 'HAz Solicitado',
        titulo: 'Asistencia Médica',
        color1: Color(0xff526BF6),
        color2: Color(0xff67ACF2)
      )
    );
  
  }

}
