import 'dart:async';

import 'package:qrreaderapp/src/providers/db_provider.dart';



class ScansBloc {
  static final ScansBloc _singleton = new ScansBloc._internal();

  factory ScansBloc ()=> _singleton;

  ScansBloc._internal() {
    // Obtener Scans de la base de datos
    obtenerScans();
  }

  final _scansController = StreamController<List<ScanModel>>();

   Stream<List<ScanModel>> get scansStream => _scansController.stream;

  dispose() {
    _scansController?.close();
  }


  obtenerScans() async {
    _scansController.sink.add(  await DBProvider.db.getTodosScans());
  }

  agregarScan(ScanModel scan) async {
    await DBProvider.db.nuevoScan(scan);
    obtenerScans();
  }

  borrarScan(int id) async{
    await DBProvider.db.deleteScan(id);
    obtenerScans();
  }

  borrarScansTodos() async{
    await DBProvider.db.deleteAllScan();
    // puede ser asi
    obtenerScans();
    // o así
    //  _scansController.sink.add([]);
  }


  
}