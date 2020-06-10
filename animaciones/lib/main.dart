import 'package:flutter/material.dart';

import 'src/pages/animaciones_page.dart';
import 'src/retos/cuadrado_animado_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animaciones App',
      home: CuadradoAnimadoPage(),
    );
  }
}