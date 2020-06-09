import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
        height: 300.0,
        color: Color(0xff615AAB)
    );
  
  }

}

class HeaderBordersRendondeados extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
        height: 300.0,
        decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70)
          )
        )
    );
  
  }

}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: 300.0,
      color: Color(0xff615AAB)
    );
  
  }

}


