import 'package:flutter/material.dart';
import 'main.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Maintain extends StatefulWidget {
  @override
  _MaintainState createState() => _MaintainState();
}
class _MaintainState extends State<Maintain> {
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
                hintText: 'Enter Employee ID',
          border: OutlineInputBorder()
          )
          ),
        TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Enter Issue',
          border: OutlineInputBorder()
          )
          ),
          RaisedButton(onPressed: (){
            
            Fluttertoast.showToast(
                    msg: "Thank You For Your Service..!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.blue[200],
                    textColor: Colors.white,
                     fontSize: 16.0
    );Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));}, child: Text("SUBMIT",style: TextStyle(color:Colors.white),),
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