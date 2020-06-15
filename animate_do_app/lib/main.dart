import 'package:flutter/material.dart';

import 'src/pages/pagina1_page.dart';
import 'src/pages/navegacion_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animate_do',
      home: NavegacionPage()
    );

  }

}
