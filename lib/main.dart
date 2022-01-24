import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 9998;

  // ignore: prefer_final_fields
  Color _likeColor = Colors.black;

  Color _mailColor = Colors.black;

  Color _callColor = Colors.black;

  Color _routeColor = Colors.black;

  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text('Tarea #1'),
            ),
            body: SingleChildScrollView(
              child: Expanded(
                  child: Column(
                children: [
                  Image.network(
                      "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                  ListTile(
                      title: const Text(
                          "El ITESO, Universidad Jesuita de Guadalajara"),
                      subtitle: const Text("San Pedro Tlaquepaque, Jal."),
                      trailing: Expanded(
                        child: Stack(children: [
                          IconButton(
                            icon: const Icon(Icons.thumb_up_sharp),
                            onPressed: () {
                              setState(() {
                                if (_likeColor == Colors.blueAccent) {
                                  _count--;
                                  _likeColor = Colors.black;
                                } else {
                                  _likeColor = Colors.blueAccent;
                                  _count++;
                                }
                              });
                            },
                            iconSize: 25,
                            color: _likeColor,
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
                            color: _mailColor,
                            onPressed: () {
                              _messengerKey.currentState!.showSnackBar(SnackBar(
                                content: Text('Correo Electronico'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {},
                                ),
                              ));
                              setState(() {
                                if (_mailColor == Colors.blueAccent) {
                                  _mailColor = Colors.black;
                                } else {
                                  _mailColor = Colors.blueAccent;
                                }
                              });
                            },
                            icon: const Icon(Icons.mail),
                          ),
                          const Text("Correo")
                        ]),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          IconButton(
                            onPressed: () {
                              _messengerKey.currentState!.showSnackBar(SnackBar(
                                content: Text('Numero de Telefono'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {},
                                ),
                              ));
                              setState(() {
                                if (_callColor == Colors.blueAccent) {
                                  _callColor = Colors.black;
                                } else {
                                  _callColor = Colors.blueAccent;
                                }
                              });
                            },
                            icon: const Icon(Icons.phone),
                            color: _callColor,
                          ),
                          const Text("Llamada"),
                        ]),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          IconButton(
                              onPressed: () {
                                _messengerKey.currentState!
                                    .showSnackBar(SnackBar(
                                  content: Text('Ojos al volante'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                  ),
                                ));
                                setState(() {
                                  if (_routeColor == Colors.blueAccent) {
                                    _routeColor = Colors.black;
                                  } else {
                                    _routeColor = Colors.blueAccent;
                                  }
                                });
                              },
                              icon: const Icon(Icons.directions),
                              color: _routeColor),
                          const Text("Ruta")
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                        "Ex magna ut Lorem aliqua tempor consectetur. Est ex magna et aute eiusmod consequat consectetur pariatur anim. Et officia ullamco ut ullamco sunt anim ut pariatur elit. Eu occaecat qui voluptate in eu tempor ex ullamco non irure exercitation magna minim in. Excepteur do nulla incididunt Lorem ut ullamco magna est elit ut enim esse esse excepteur."),
                  )
                ],
              )),
            )));
  }
}
