import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widget/pinterest_menu.dart';

class PinterestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PinterestGrid(),
          _PinterestMenuLocation()
        ],
      )
    );
  
  }

}

class _PinterestMenuLocation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final widthPantalla = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 30,
      child: Container(
        width: widthPantalla,
        child: Align(
          child: PinterestMenu()
        ),
      )
    );
  
  }

}

class PinterestGrid extends StatefulWidget {

  @override
  _PinterestGridState createState() => _PinterestGridState();

}

class _PinterestGridState extends State<PinterestGrid> {

  final List<int> items = List.generate(200, (i) => i);
  ScrollController controller = new ScrollController();
  double scrollAnterior = 0;

  @override
  void initState() {
    controller.addListener(() {
      if ( controller.offset > scrollAnterior ) {
        print('ocultar menu');
      } else {
        print('mostrar menu');
      }

      scrollAnterior = controller.offset;
    });

    super.initState();
  }

  @override
  void dispose() {
    this.controller.dispose();
    super.dispose();
  }

  @override  
  Widget build(BuildContext context) {

    return StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: 4,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => _PinterestItem( index ),
      staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 3),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  
  }

}

class _PinterestItem extends StatelessWidget {

  final int index;

  const _PinterestItem(this.index);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all( Radius.circular(30) )
      ),
      child: Center(
        child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text('$index'),
      ),
    ));

  }
}
