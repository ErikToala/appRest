
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DatoName extends StatefulWidget {

  String nombre;

  DatoName(this.nombre);

  @override
  _DatoNameState createState() => _DatoNameState();
}

class _DatoNameState extends State<DatoName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppRest"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240,94,100,1.0),
      ),

      body: Container(
        color: Color.fromRGBO(249,246,239,1.0),

       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Align(
               child: Icon(
                 Icons.person,
                  size: 150.0,
               ),
             ),

             SizedBox(height: 3,),
             Text("USUARIO SELECCIONADO",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
             
             ),

            SizedBox(height: 5,),
             Text(widget.nombre,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
             
             ),

            
          ],
        ), 
      ),
    );
  }
}