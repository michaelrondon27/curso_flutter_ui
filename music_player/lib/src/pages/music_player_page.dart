import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import '../widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          Column(
            children: <Widget>[
              CustomAppBar(),
              ImagenDiscoDuracion(),
              TituloPlay(),
              Expanded(
                child: Lyrics(),
              )
            ]
          ),
        ],
      )
    );
  
  }

}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final scrennSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: scrennSize.height * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(60) ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.center,
          colors: [
            Color(0xff5D44EC).withOpacity(0.4),
            Color(0xff000003)
          ]
        )
      ),
    );
  
  }

}

class ImagenDiscoDuracion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 10 ),
      margin: EdgeInsets.only( top: 70 ),
      child: Row(
        children: <Widget>[
          ImagenDisco(),
          SizedBox( width: 40 ),
          BarraProgeso(),
          SizedBox( width: 20 )
        ],
      )
    );
  
  }

}

class ImagenDisco extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(20),
      width: 250,
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/No Guidance.png')
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: Color(0xff1C1C25),
                borderRadius: BorderRadius.circular(100)
              ),
            )
          ],
        )
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xff400321),
            Color(0xff5D44EC)
          ]
        )
      ),
    );
  
  }

}

class BarraProgeso extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final estilo = TextStyle( color: Colors.white.withOpacity(0.6) );

    return Container(
      child: Column(
        children: <Widget>[
          Text('00:00', style: estilo),
          SizedBox( height: 10 ),
          Stack(
            children: <Widget>[
              Container(
                width: 3,
                height: 230,
                color: Color(0xff400321).withOpacity(0.6),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 3,
                  height: 150,
                  color: Color(0xff5D44EC),
                ),
              )
            ],
          ),
          SizedBox( height: 10 ),
          Text('00:00', style: estilo)
        ]
      )
    );
  
  }

}

class TituloPlay extends StatefulWidget {

  @override
  _TituloPlayState createState() => _TituloPlayState();

}

class _TituloPlayState extends State<TituloPlay> with SingleTickerProviderStateMixin {

  bool isPlaying = false;
  AnimationController playAnimation;

  @override
  void initState() {
    playAnimation = AnimationController( vsync: this, duration: Duration(milliseconds: 500) );
    
    super.initState();
  } 

  @override
  void dispose() {
    this.playAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 40 ),
      margin: EdgeInsets.only( top: 40 ),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('No Guidance', style: TextStyle( fontSize: 30, color: Colors.white.withOpacity(0.8) )),
              Text('Chris Brown Feat. Drake', style: TextStyle( fontSize: 15, color: Colors.white.withOpacity(0.8) ))
            ],
          ),
          Spacer(),
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Color(0xff400321),
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: playAnimation,
            ),
            onPressed: () {
              if ( this.isPlaying ) {
                playAnimation.reverse();
                this.isPlaying = false;
              } else {
                playAnimation.forward();
                this.isPlaying = true;
              }
            },
          )
        ],
      )
    );
  
  }
}

class Lyrics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final lyrics = getLyrics();

    return Container(
      child: ListWheelScrollView(
        physics: BouncingScrollPhysics(),
        itemExtent: 42,
        diameterRatio: 1.5,
        children: lyrics.map(
          (linea) => Text(linea, style: TextStyle( fontSize: 14, color: Colors.white.withOpacity(0.6)))
        ).toList()
      )
    );
  
  }

}
