import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../routes/routes.dart';

class LauncherPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Diseños en Flutter'),
      ),
      drawer: _MenuPrincipal(),
      body: _ListaOpciones()
    );
  
  }

}

class _ListaOpciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: ( context, i ) => Divider(
        color: Colors.blue,
      ),
      itemCount: pageRoutes.length,
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon( pageRoutes[i].icon, color: Colors.blue ),
        title: Text(pageRoutes[i].titulo),
        trailing: Icon( Icons.chevron_right, color: Colors.blue ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => pageRoutes[i].page ));
        },
      )
    );
  
  }

}

class _MenuPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                width: double.infinity,
                height: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('MR', style: TextStyle( fontSize: 50 ) ),
                ),
              ),
            ),
            Expanded(
              child: _ListaOpciones()
            ),
            ListTile(
              leading: Icon( Icons.lightbulb_outline, color: Colors.blue ),
              title: Text('Dark Mode'),
              trailing: Switch.adaptive(
                value: true, 
                activeColor: Colors.blue,
                onChanged: ( value ) {}
              ),
            ),
            ListTile(
              leading: Icon( Icons.add_to_home_screen, color: Colors.blue ),
              title: Text('Custom Theme'),
              trailing: Switch.adaptive(
                value: true, 
                activeColor: Colors.blue,
                onChanged: ( value ) {}
              ),
            )
          ],
        ),
      ),
    );
  
  }

}
