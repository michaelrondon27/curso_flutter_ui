import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              ZapatoSizePreview( fullScreen: true ),
              Positioned(
                top: 80,
                child: FloatingActionButton(
                  child: Icon( Icons.chevron_left, color: Colors.white, size: 60, ),
                  onPressed: () {},
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              )
            ]
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                  ),
                  _MontoBuyNow(),
                  _ColoresYmas(),
                  _BotonesLikeCartSettings()
                ],
              ),
            )
          )
        ],
      )
    );
  
  }

}

class _BotonesLikeCartSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric( vertical: 20 ),
      padding: EdgeInsets.symmetric( horizontal: 30 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BotonSombreado( Icon( Icons.star, color: Colors.red, size: 25 ) ),
          _BotonSombreado( Icon( Icons.add_shopping_cart, color: Colors.grey.withOpacity(0.4), size: 25 ) ),
          _BotonSombreado( Icon( Icons.settings, color: Colors.grey.withOpacity(0.4), size: 25 ) ),
        ]
      )
    );
  
  }

}

class _BotonSombreado extends StatelessWidget {

  final Icon icon;

  _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: this.icon,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow( color: Colors.black12, spreadRadius: -5, blurRadius: 10, offset: Offset(0, 10) )
        ]
      ),
    );
  
  }

}

class _ColoresYmas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 30 ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 90,
                  child: _BotonColor( Color(0xffC6D642) )
                ),
                Positioned(
                  left: 60,
                  child: _BotonColor( Color(0xffFFAD29) )
                ),
                Positioned(
                  left: 30,
                  child: _BotonColor( Color(0xff2099F1) )
                ),
                _BotonColor( Color(0xff364D56) )
              ]
            ),
          ),
          BotonNaranja(texto: 'More related items', alto: 30, ancho: 170, color: Color(0xffFFC675))
        ]
      ),
    );
  
  }

}

class _BotonColor extends StatelessWidget {

  final Color color;
  
  _BotonColor(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 30 ),
      child: Container(
        margin: EdgeInsets.only( top: 15, bottom: 15 ),
        child: Row(
          children: <Widget>[
            Text('\$180.0', style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold )),
            Spacer(),
            BotonNaranja( texto: 'Buy Now', ancho: 120, alto: 40 )
          ]
        )
      ),
    );
  
  }

}
