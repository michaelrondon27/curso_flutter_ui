import 'package:flutter/material.dart';

import 'src/pages/zapato_desc_page.dart';
import 'src/pages/zapato_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      home: ZapatoDescPage()
    );
  }
}