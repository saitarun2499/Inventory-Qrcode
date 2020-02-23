import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_scanner/qr_scanner_overlay_shape.dart';
import 'main.dart';
import 'package:inventory/retrive.dart';
import 'package:inventory/retrivep.dart';
class Scannerre extends StatefulWidget {
  @override
  _ScannerreState createState() => _ScannerreState();
}

class _ScannerreState extends State<Scannerre> {
  GlobalKey qrKey = GlobalKey();
  var qrText='';
 
  QRViewController controller;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));
        },),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Retrivep(),));
          },iconSize: 40.0,)
        ],
      ),
        body:Column(
          children: <Widget>[
            Expanded(
              flex:5,
              child: QRView(
                  key: qrKey,
                  overlay: QrScannerOverlayShape(
                      borderRadius: 10,
                      borderColor: Colors.red,
                      borderLength: 30,
                      borderWidth: 10,
                      cutOutSize: 300
                  ),
                  onQRViewCreated: _onQRViewCreate
              ),
            ),
            // Expanded(
            //     flex: 1,
            //     child: Center(
            //       child:Text('ScanResult: $qrText='''),

            //     ))
          ],
        )
    );
  }
  @override
  void dispose(){
    controller?.dispose();
  }

  void _onQRViewCreate(QRViewController controller) {
    this.controller=controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        if(scanData!=null){
          qrText=scanData;
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Retrive(),));
        }
      });
    });

  }

}