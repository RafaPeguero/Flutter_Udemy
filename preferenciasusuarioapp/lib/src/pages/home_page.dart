import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: _crearMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario:'),
          Divider(),
          Text('Género:'),
          Divider(),
          Text('Nombre usuario:'),
          Divider(),
        ],
      ),
    );
  }

  Drawer _crearMenu() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: 
            ),
          )
        ],
      ),
    );
  }
}