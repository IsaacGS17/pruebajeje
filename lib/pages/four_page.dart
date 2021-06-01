import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro vacunacion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantallaRegistro(),
    ); //Fin de materialapp
  } //Fin de widget
} //Fin de clase myloginapp

class PantallaRegistro extends StatefulWidget {
  @override
  _PantallaRegistroState createState() => _PantallaRegistroState();
} //Fin de clase pantallaingreso

class _PantallaRegistroState extends State<PantallaRegistro> {
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro para vacunacion'),
      ), //Fin de appbar
      body: SafeArea(
          child: ListView(padding: EdgeInsets.symmetric(horizontal: 24.0), children: <Widget>[
        SizedBox(
          height: 80.0,
        ),
        Column(
          children: <Widget>[
            Image.asset('assets/curp.jpg'),
            SizedBox(height: 20.0),
          ],
        ),
        if (!isLogin)
          Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(
                filled: true,
                // fillColor: Colors.amber,
                labelText: 'Ingresa tu Curp',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      'Confirmar Curp',
                    ),
                    onPressed: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                  ),
                ], //Fin de widget[]
              ), //Fin de row
            ) //Fin de padding
          ] //Fin de widget[]
              ) //Fin de columna
        else
          Center(
            child: Column(
              children: <Widget>[
                Text('Te registraste exitosamente'),
                RaisedButton(
                  elevation: 20.0,
                  child: Text('Volver'),
                  onPressed: () {
                    setState(() {
                      isLogin = false;
                    });
                  },
                )
              ], //Fin de widget[]
            ), //Fin de columna
          ) //Fin de center
      ] //Fin de widget[]
              ) //Fin de listview
          ), //Fin de area segura
    ); //Fin scaffold
  } //Fin de widget build
} //Fin de clase _pantallaingresostate