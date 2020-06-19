import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: <Widget>[
          ZapatoSizePreview( fullScreen: true ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                  ),
                  _MontoBuyNow()
                ],
              ),
            )
          )
        ],
      )
    );
  
  }

}

class _MontoBuyNow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only( top: 20 ),
      child: Row(
        children: <Widget>[
          Text('\$180.0', style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold )),
          Spacer(),
          BotonNaranja( texto: 'Buy Now', ancho: 120, alto: 40 )
        ]
      )
    );
  
  }

}
