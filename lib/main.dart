import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  int _count = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Tarea #1'),
            ),
            body: SingleChildScrollView(
              child: Expanded(
                  child: Column(
                children: [
                  Image.network(
                      "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                  ListTile(
                      title:
                          Text("El ITESO, Universidad Jesuita de Guadalajara"),
                      subtitle: Text("San Pedro Tlaquepaque, Jal."),
                      trailing: Expanded(
                        child: Column(children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up_sharp),
                            onPressed: () {
                              setState();
                            },
                            iconSize: 25,
                            color: Colors.blueAccent,
                          ),
                          Text("Likes: $_count"),
                        ]),
                      )),
                  Center(
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          IconButton(
                            onPressed: () {
                              //final snackBar = SnackBar(content: Text("ono"))
                            },
                            icon: Icon(Icons.mail),
                          ),
                          Text("Correo")
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                          Text("Llamada")
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.directions)),
                          Text("Ruta")
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Ex magna ut Lorem aliqua tempor consectetur. Est ex magna et aute eiusmod consequat consectetur pariatur anim. Et officia ullamco ut ullamco sunt anim ut pariatur elit. Eu occaecat qui voluptate in eu tempor ex ullamco non irure exercitation magna minim in. Excepteur do nulla incididunt Lorem ut ullamco magna est elit ut enim esse esse excepteur."),
                  )
                ],
              )),
            )));
  }

  setState() {
    _count++;
  }
}
