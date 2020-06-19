import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar( texto: 'For you' ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ZapatoSizePreview(),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                  )
                ],
              ),
            ),
          ),
          AgregarCarritoBoton( monto: 180.0 )
        ],
      ),
    );
  
  }

}
