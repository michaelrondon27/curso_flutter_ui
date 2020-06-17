import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'src/pages/launcher_page.dart';
import 'src/theme/theme.dart';
 
void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => new ThemeChanger(),
    child: MyApp()
  )
);
 
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