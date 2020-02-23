import 'package:flutter/material.dart';
import 'package:inventory/maintainence.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_scanner/qr_scanner_overlay_shape.dart';
import 'main.dart';
import 'package:inventory/maintainencep.dart';
class Scannerma extends StatefulWidget {
  @override
  _ScannermaState createState() => _ScannermaState();
}

class _ScannermaState extends State<Scannerma> {
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
          IconButton(icon: Icon(Icons.add,size:40.0), onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Maintainp(),));
          },)
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Maintain(),));
        }
      });
    });
  }

}