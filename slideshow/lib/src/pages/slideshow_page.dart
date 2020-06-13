import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../widgets/slideshow.dart';

class SlideshowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Slideshow(
        // puntosArriba: true,
        colorPrimario: Color(0xffFF5A7E),
        // colorSecundario: Colors.purple,
        bulletPrimario: 20,
        bulletSecundario: 12,
        slides: <Widget>[
          SvgPicture.asset('assets/svgs/slide-1.svg'),
          SvgPicture.asset('assets/svgs/slide-2.svg'),
          SvgPicture.asset('assets/svgs/slide-3.svg'),
          SvgPicture.asset('assets/svgs/slide-4.svg'),
          SvgPicture.asset('assets/svgs/slide-5.svg')
        ],
      )
    );
  
  }

}
