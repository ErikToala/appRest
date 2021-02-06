
import 'package:firt_app/src/pages/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationUp extends StatelessWidget{

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Text("AppRest"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240,94,100,1.0),
        automaticallyImplyLeading: false,
      ),

      body: Container(
        color: Color.fromRGBO(249,246,239,1.0),

        child: Column(
          children: <Widget>[
          
          SizedBox(height: 40,),
          Image.asset(
            'assets/upchiapas.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            height: 110,
            width: 110,
            ),
          textSection,
          const SizedBox(height: 30),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            color: Colors.lightBlue,
            child: Text('Next', style: TextStyle(color: Colors.white)),
          ),
          
        ],
          
        ),
        
      ),
    );
  }

}

Widget textSection = Container(
  padding: const EdgeInsets.all(33),
  child: Text(
    
    "La UPChiapas surgió con un modelo educativo basado en competencias, con estancias y estadías en el sector productivo con salidas transversales con especial acento en la necesidad de desarrollar en el alumno una formación integral en todos sus aspectos, es decir, profesional, humano y social, así como tutorías y asesorías, movilidad, infraestructura y apoyos compensatorios.", 
    
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,),
    softWrap: true,
  ),
  
  
);


/*Widget boton() => InkWell(

  onTap: (){},
  child: Container(
    height: 50.0,
    width: 120.0,
    decoration: BoxDecoration(
      border: Border.all(color:Colors.blue),
      borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.all(20.0),
    padding: EdgeInsets.all(5.0),
    child: Center(
      child: Text(
        'Next',
        style: TextStyle(color: Colors.blue, fontSize: 16.0),
      ),
    ),
  ),
); */




