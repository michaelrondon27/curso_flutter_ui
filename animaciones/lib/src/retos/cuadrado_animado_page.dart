import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CuadradoAnimadoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: Center(
          child: _CuadradoAnimado()
        ),
    );
  
  }

}

class _CuadradoAnimado extends StatefulWidget {

  @override
  __CuadradoAnimadoState createState() => __CuadradoAnimadoState();

}

class __CuadradoAnimadoState extends State<_CuadradoAnimado> {

  AnimationController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return _Rectangulo();
  
  }

}

class _Rectangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue
      )
    );

  }

}