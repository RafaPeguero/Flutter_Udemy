import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres' , 'cuatro', 'salten', 'que va pasando mi combo'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        // children:  _crearItems()
        children: _creatItemsCorta(),
      ),
    );
  }


  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)
  //           ..add(Divider(
  //       color: Colors.blueAccent,
  //       height: 1,
  //       thickness: 3,
  //     ));
  //   }
  //   return lista;
  // }


  List<Widget> _creatItemsCorta() {
    return opciones.map( (item ) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Don omar'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

  }
}