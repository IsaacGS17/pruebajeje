import 'package:flutter/material.dart';
import 'package:proyecto/pages/first_page.dart';
import 'package:proyecto/pages/second_page.dart';
import 'package:proyecto/pages/third_page.dart';
import 'package:proyecto/pages/four_page.dart';
void main() => runApp(IsaacApp());

class IsaacApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Granados',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    );//Fin materialapp
  }//Fin de widget build
}//Fin clase myapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}//Fin de clase paginainicio con estado

class _PaginaInicioState extends State<PaginaInicio>{
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
        case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FourPage());
        break;
    }//Fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blueGrey, size: 30.0), //icon
            title: Text('Inicio')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.blueGrey, size: 30.0), //icon
            title: Text('Registrarse')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.blueGrey, size: 30.0), //icon
            title: Text('Comprar')), //
             BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.blueGrey, size: 30.0), //icon
            title: Text('Favoritos')), //
      ]), // bottom
    );//Fin de scaffold
  }//Fin widget build
}//Fin de clase _PaginaInicioState