import 'package:flutter/material.dart';

import 'src/pages/circular_progress_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProgressBar App',
      home: CircularProgressPage()
    );
  }
}