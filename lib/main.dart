import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemyejercicios/helpers/dialogs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Bienvenido a Flutter"),
        ),
        body: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(blurRadius: 5, color: Colors.teal)],
                    border: Border.all(color: Colors.green)),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Hola Mundo Flutter",
                      style: TextStyle(color: Colors.teal, fontSize: 26),
                    ),
                    Image.asset(
                      "assets/img/subte.jpg",
                      height: 300,
                    ),
                    Text(
                      "Esta es la app de componentes del curso",
                      style: TextStyle(color: Colors.green, fontSize: 22),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextButton(
                        onPressed: () {
                          contacto(context);
                        },
                        child: Text("Contacto"),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  contacto(BuildContext context) {
    infoDialog(context, "Contacto", "Aqui puedes contactarme");
  }
}