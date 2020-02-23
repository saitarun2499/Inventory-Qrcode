import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inventory/scannerupload.dart';
import 'main.dart';
class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}
class _UploadState extends State<Upload> {
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
      body: Container(
      child: Column(
       
        children: <Widget>[
           SizedBox(height: 20,width: 20,),
          Text("QR ID"),
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
           SizedBox(height: 35,width: 35,),
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
          RaisedButton(child: Text("SUBMIT",style: TextStyle(color:Colors.white),),
           onPressed: () {
            Fluttertoast.showToast(
                    msg: "Your Record Has Been Successfully Updated..!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.red[200],
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
    );
    
  }
}