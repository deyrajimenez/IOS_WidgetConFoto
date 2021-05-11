import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget con Foto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: PaginaDeInicio(),
    ); //Material App
  } //Widget
} //Clase MiFotoApp

class PaginaDeInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bordes Jimenez'),
      ), //AppBar
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: Colors.deepPurple,
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  'Deyra Jimenez',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ), //Contenedor nombre
            SizedBox(height: 50),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/gato.jpeg'),
                  fit: BoxFit.cover,
                ),
                //borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                border: Border(
                  top: BorderSide(
                    color: Colors.deepPurple,
                    width: 3.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.deepPurple,
                    width: 3.0,
                  ),
                ),
              ), //Fin de caja
            ), //Contenedor Foto
            SizedBox(height: 50),
            Container(
              height: 100,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  //Change the Focused Border
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                    child: Center(
                      child: Text(
                        '6J - Programacion',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ), //Contenedor Info
          ] //Niños
              ), //Columna
        ), //Center
      ), //Body
    ); //Scaffold
  } //constructor
} //PaginaDeInicio
