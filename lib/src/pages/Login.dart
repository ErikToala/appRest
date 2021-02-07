
import 'package:firt_app/src/pages/ListNames.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firt_app/src/pages/InformationUp.dart';

class Login extends StatelessWidget{

  String usuario = '';
  String password = '';
  bool mostrarPassword = false;
  int contador = 0;


  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppRest"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240,94,100,1.0),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color.fromRGBO(249,246,239,1.0),
        width: MediaQuery.of(context).size.width,

        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            SizedBox(height: 60,),

            Text("Login", style: TextStyle(
              color: Colors.blue,
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ), 
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 25,),

            TextField(
              onChanged: (texto){
                usuario = texto;
              },

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                hintText: 'Nombre de usuario',
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),

            SizedBox(height: 32,),

            TextField(
              onChanged: (texto){
                password = texto;
              },
              
              obscureText: !this.mostrarPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(icon: Icon(
                  Icons.remove_red_eye,
                  color: this.mostrarPassword ? Colors.blue : Colors.grey,
                ), 
                
                onPressed: (){this.mostrarPassword = !this.mostrarPassword;}
                ),

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                hintText: 'Ingrese Contraseña',
                icon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                
                ),
              ),
            ),

            SizedBox(height: 35,),

            ElevatedButton(
              
            
              onPressed:(){
                
                if(usuario.isEmpty || password.isEmpty){
                  Fluttertoast.showToast(
                    msg: "Campos vacíos, llenar todos los campos ",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 5,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                  );
                } else{
                  print(usuario + password);
                  Fluttertoast.showToast(
                    msg: "Usuario: "+usuario + " Contraseña: "+password,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 5,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListNames()),
                  );
                }
                
              },
              child:Text(
                'Iniciar sesión',
                style: TextStyle(color: Colors.white,
                ),
              ),

              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                        return Color.fromRGBO(
                        42, 200, 194, 1.0); 
                      },
                    ),
                  
                ),
              
            ),

            SizedBox(height: 40,),

            Align(
              alignment: FractionalOffset(0.07, 0.10),
              child: MaterialButton(
                  minWidth: 120.0,
                  height: 35.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InformationUp()),
                    );
                  },
                color: Color.fromRGBO(42, 200, 194, 1.0),
                child: Text('Back', style: TextStyle(color: Colors.white)),
              ),
            ),
            
          ],  
        ),

      ),

    );
  }


}