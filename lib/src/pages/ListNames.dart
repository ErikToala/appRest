
import 'package:firt_app/src/pages/DatoName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListNames extends StatefulWidget {
  @override
  State<ListNames> createState(){
    return StateListNames();
  }
}

class StateListNames extends State<ListNames> {

  List<String> nombres;

  @override
  void initState(){
    super.initState();

    nombres = ['Erik Toalá','David', 'Jorge', 'Elias','Gisela','Elvira','César','Fernanda', 'Ricardo','Alessandra','Lucero','Luis','Magdalena','Ximena','Clemente','Julio','Antonia','Paul','Rigoberto','Mireya','Estefania','Miguel','Antonio','Carmen','Honorio'
    ];
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppRest"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240,94,100,1.0),
      ),

      body: ListView.builder(
        
        itemCount: nombres.length,
        itemBuilder: (context, position){
          return Nombres(nombres[position]);
          
        },
      ),
       
    ); 
  }
}


class Nombres extends StatelessWidget {

  String nombre;

  Nombres(this.nombre);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Center(
          child: Center(
            child: Text(nombre),
          ),
        ),
      ),

      onTap: (){
        Navigator.of(context).push(MaterialPageRoute<Null>(
          builder: (BuildContext conttext){
            return new DatoName(nombre);
          }
        ));
       
        //print('Click en $nombre');
      },
      
      
      
    );
  }
}



