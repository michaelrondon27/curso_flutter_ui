import 'package:flutter/material.dart';

import 'src/pages/launcher_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temas App',
      home: LauncherPage()
    );
  
  }

}