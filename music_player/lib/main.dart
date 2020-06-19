import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'src/models/audioplayer_model.dart';
import 'src/pages/music_player_page.dart';
import 'src/theme/theme.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AudioPlayerModel>( create: (_) => AudioPlayerModel() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: miTema,
        home: MusicPlayerPage()
      ),
    );

  }

}