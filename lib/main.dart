import 'package:flutter/material.dart';

void main() => runApp(MyFotoApp());

class MyFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), //fin de Theme
      home: PaginaInicio(),
    ); //fin de material App
  } //fin de widget
} //fin de clase MyFotoApp heredando statelesswidget

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregando bordes APP de Jimenez'),
        centerTitle: true,
      ), //fin de app bar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ), //fin de border
                ), //fin de boxdecoration
                child: Center(
                  child: Text(
                    'Deyra Jimenez',
                    style: TextStyle(fontSize: 18),
                  ), //fin de text
                ), //fin de center
              ), //fin de container
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 100,
                child: Icon(
                  DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/lensabl-0GfPlommtxM-unsplash.jpg"), alignment: Alignment.topCenter),
                  color: Colors.purple[50],
                  size: 100,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ), //fin de border size
                  ), //fin de border
                ), //fin de boxdecoration
              ), //fin de container imagen
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad
            ], //fin del children/niño
          ), //fun de column
        ), //fin de child center
      ), //fin de body
    ); //fin de scaffold
  } //fin de widget
} //fin de pagina de inicio
