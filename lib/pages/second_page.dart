import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                          child: new Image(
                        width: 300.0,
                        height: 200.0,
                        image: new AssetImage('assets/esponja2.jpg'),
                      ) //fin de image
                          )
                    ], //fin de widget
                  ), //fin de stack
                ), //container
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Tu correo", icon: Icon(Icons.email)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Mensaje", icon: Icon(Icons.message)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('Enviar'),
                      color: Colors.grey,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () {},
                    ), //Fin FlatButton
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    RaisedButton(
                      child: Text(
                        'Cancelar',
                      ),
                      color: Colors.blueGrey[600],
                      splashColor: Colors.cyan,
                      animationDuration: Duration(seconds: 20),
                      padding: EdgeInsets.all(20.0),
                      colorBrightness: Brightness.light,
                      onPressed: () {},
                    ), //Fin Raised Button
                    SizedBox(
                      height: 40,
                    ), // fin de sizedbox
                  ], //Fin children Widget
                ), //Fin de child Row
              ], //fin de widget
            ), //fin de column
          ], //fin de widget
        ), //fin de columna
      ) //fin de container
          ), //fin body safearea
    ); //fin de scaffold
  } // fin de widget
} // fin de first page
