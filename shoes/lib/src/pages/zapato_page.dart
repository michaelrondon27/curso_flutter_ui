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
          ZapatoSizePreview()
        ],
      ),
    );
  
  }

}
