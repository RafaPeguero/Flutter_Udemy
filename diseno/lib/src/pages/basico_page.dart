import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),


      ]
        ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://i.redd.it/pk3ddeg4sy901.jpg'),
        height: 220.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un tronco',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Un lago limpio (SIN EL PLD)',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 25.0),
            Text('41', style: TextStyle(fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, "SHARE"),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,), 
        SizedBox(height: 7.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
        ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Magna aliquip proident ex in nulla et duis eu laborum exercitation aliqua adipisicing nulla laborum. Occaecat minim consectetur duis eiusmod deserunt dolor eiusmod non velit. Deserunt sit pariatur qui esse reprehenderit fugiat do commodo est qui veniam officia anim. Labore id minim adipisicing ex qui fugiat reprehenderit culpa. Occaecat sint consectetur velit commodo minim duis.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
