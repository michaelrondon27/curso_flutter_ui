import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _Slides()
            ),
            _Dots()
          ],
        )
      )
    );
  
  }

}

class _Slides extends StatefulWidget {
  
  @override
  __SlidesState createState() => __SlidesState();

}

class __SlidesState extends State<_Slides> {

  final pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
  
    pageViewController.addListener(() {
      print('Pagina actual: ${ pageViewController.page }');
    });
  }

  @override
  void dispose() { 
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Container(
      child: PageView(
        controller: pageViewController,
        children: <Widget>[
          _Slide('assets/svgs/slide-1.svg'),
          _Slide('assets/svgs/slide-2.svg'),
          _Slide('assets/svgs/slide-3.svg')
        ],
      )
    );
  

  }
}

class _Slide extends StatelessWidget {

  final String svg;

  const _Slide(this.svg);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset(svg)
    );

  }

}

class _Dots extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _Dot(0),
          _Dot(1),
          _Dot(2)
        ],
      )
    );

  }

}

class _Dot extends StatelessWidget {

  final int index;

  const _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle
      )
    );
  
  }

}
