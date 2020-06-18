import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'src/models/layout_model.dart';
import 'src/pages/launcher_page.dart';
import 'src/pages/launcher_tablet_page.dart';
import 'src/theme/theme.dart';
 
void main() => runApp(
  MultiProvider(
    providers: <SingleChildWidget>[
      ChangeNotifierProvider<ThemeChanger>(create: (_) => ThemeChanger( 2 )),
      ChangeNotifierProvider<LayoutModel>(create: (_) => LayoutModel())
    ],
    child: MyApp()
  )
);
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
  
    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Temas App',
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {

          final screenSize = MediaQuery.of(context).size;

          if ( screenSize.width > 500 ) {

            return LauncherTabletPage();

          } else {

            return LauncherPage();

          }

          // return Container(
          //   child: LauncherPage(),
          // );
        
        },
      ),
    );
  
  }

}