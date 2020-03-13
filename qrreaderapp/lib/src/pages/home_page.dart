import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qrreaderapp/src/bloc/scans_bloc.dart';
import 'package:qrreaderapp/src/models/scan_model.dart';
import 'package:qrreaderapp/src/pages/direcciones_page.dart';
import 'package:qrreaderapp/src/pages/mapas_page.dart';
import 'package:qrreaderapp/src/utils/utils.dart' as utils;


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scansBloc = new ScansBloc();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () => scansBloc.borrarScansTodos(),
            )
        ],
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: () =>_scanQR(context),
        backgroundColor: Theme.of(context).primaryColor,

        ),
    );
  }

   _scanQR(BuildContext context) async {

     // 
     // geo:40.73255860802501,-73.89333143671877

     String futureString = 'https://fernando-herrera.com';
     

    // try {
    //   futureString = await BarcodeScanner.scan();
    // } catch(error) {
    //   futureString = error.toString();
    // }


    if(futureString != null) {
      // Video numero 163 URL_launcher
      final scan = ScanModel(valor: futureString);
      scansBloc.agregarScan(scan);

     final scan2 = ScanModel(valor: 'geo:40.73255860802501,-73.89333143671877');
      scansBloc.agregarScan(scan2);

      if (Platform.isIOS) {
        Future.delayed(Duration(milliseconds: 750), () {
          utils.abrirScan(context, scan);
        });
      } else {
        utils.abrirScan(context, scan);
      }
    }
  }

  Widget _callPage(int paginaActual) {
    switch(paginaActual) {
      case 0: return MapasPage();
      case 1: return DireccionesPage();
      default: 
      return MapasPage();
    }
  }

  Widget _crearBottomNavigationBar() {

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas')
          ),
          
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones')
          ),
      ],
    );
  }
}