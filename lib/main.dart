import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inventory/scanmaintainence.dart';
import 'package:inventory/scannerupload.dart';
import 'package:inventory/scannerretrive.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inventory Management"),
        ),
        body: Button(),
      ),
    );
  }
}
class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(
      
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0,width: 100.0,),
          Image.network("https://lh4.googleusercontent.com/proxy/ue8xxuTyjVHPc5ADXre0su6xBm7tuf1AsNSly6rpBSKS1MF8zyJ0eEKmAvo4s7QwUhdavq5kTulEFpMxlhhtp6K03PvGCPgrs0KxTs3KR6Y4Vt4"),
         SizedBox(width: 200.0,height: 200.0,),
          RaisedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Scanner(),));
              },
              
         child: Text("              Upload               "),
         color: Colors.orange,
         shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)
),
         
              ),
          RaisedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Scannerre(),));
              },
            child: Text("              Retrive              "),
            color: Colors.green,
            shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)
),
              ),
          RaisedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Scannerma(),));
              },
            child:Text("           Maintaince          "),
            color: Colors.yellow,
            shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)
),
              ),
              
        ],
      ),
      color: Colors.blue[100],
    ),
    
    );
  }
  
}