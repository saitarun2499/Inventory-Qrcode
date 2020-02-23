import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'main.dart';

class Uploadp extends StatefulWidget {
  @override
  _UploadpState createState() => _UploadpState();
}

class _UploadpState extends State<Uploadp> {
    int selectedRaido;
  @override
  void initState() {
    super.initState();
    selectedRaido=0;
  }
  setSelectedRadio(int val){
    setState(() {
      selectedRaido = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));
        },),
      ),      
      body: SingleChildScrollView(child:Container(
      child: Column(
        children: <Widget>[
           SizedBox(height: 20,width: 20,),
          TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Enter QRID',
          border: OutlineInputBorder()
          )
          ),
          SizedBox(height: 20,width: 20,),
          TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Name',
          border: OutlineInputBorder()
          )
          ),
           SizedBox(height: 20,width: 20,),
          TextField(
            decoration: InputDecoration(
               hintStyle: TextStyle(fontSize: 17),
                hintText: 'Date of installation',
          border: OutlineInputBorder()
          )
          ),
           SizedBox(height: 20,width: 20,),
          TextField(
            decoration: InputDecoration(
               hintStyle: TextStyle(fontSize: 17),
                hintText: 'Color',
          border: OutlineInputBorder()
          )
          ),
           
          ButtonBar(
            children: <Widget>[
              Radio(value: 1, groupValue:selectedRaido, onChanged: (val){setSelectedRadio(val);},activeColor: Colors.blue,),
              Text("Wing-A",textScaleFactor: 1.0,),
              Radio(value: 2, groupValue:selectedRaido, onChanged: (val){setSelectedRadio(val);},activeColor: Colors.blue,),
               Text("Wing-B",textScaleFactor: 1.0,),
              Radio(value: 3, groupValue:selectedRaido, onChanged: (val){setSelectedRadio(val);},activeColor: Colors.blue,),
               Text("Wing-C           ",textScaleFactor: 1.0,),
            ],
          ),
          RaisedButton(
           child: Text("SUBMIT",style: TextStyle(color:Colors.white),),
          
           onPressed: () {
            Fluttertoast.showToast(
                    msg: "Your Record Has Been Successfully Updated..!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                     fontSize: 16.0
                );
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp(),));
          },
          color: Colors.black,
           shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)
),
          )
        ],
        
      ),
    ),
    ),);
  }
}