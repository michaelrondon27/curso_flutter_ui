import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          ImagenDiscoDuracion()
        ]
      )
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
