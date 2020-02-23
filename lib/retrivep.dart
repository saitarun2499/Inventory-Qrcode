import 'package:flutter/material.dart';
import 'main.dart';
class Retrivep extends StatefulWidget {
  @override
  _RetrivepState createState() => _RetrivepState();
}

class _RetrivepState extends State<Retrivep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));
        },
        ),
      ),
      body: Container(
      child: Column(
        children: <Widget>[
           SizedBox(height: 20,width: 20,),
         TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Enter QR ID',
          border: OutlineInputBorder()
          )
          ),
          RaisedButton(onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));}, child: Text("SUBMIT",style:TextStyle(color:Colors.white),),
            color: Colors.black,
           shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)
),
           ),
        ],
      ),
    ),
    );
  }
}